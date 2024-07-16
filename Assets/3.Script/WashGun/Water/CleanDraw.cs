using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class CleanDraw : MonoBehaviour
{
    private MaterialPropertyBlock TextureBlock
    {
        get
        {
            if (_textureBlock == null)
            {
                _textureBlock = new MaterialPropertyBlock();
            }
            return _textureBlock;
        }
    }

    private MaterialPropertyBlock _textureBlock;

    private static readonly string MaskPaintTexPropertyName = "_MaskTex"; // 쉐이더에서 가져올 texture의 이름
    private static readonly string WaterPaintTexPropertyName = "_WaterTex"; // 쉐이더에서 가져올 texture의 이름

    private MeshRenderer _mr;

    public int resolution = 128;

    [SerializeField] private RenderTexture renderMaskTexture; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private RenderTexture renderWaterTexture; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private Texture2D maskTexture; // 렌더 텍스쳐의 원본 텍스처

    private BrushController brushController;
    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser
    private float brushSize; // 브러쉬 크기 기준
    private Material curMaterial;

    private float fadeAmount = 0.1f; // 흐려지는 정도

    private MeshCollider prevCollider;
    private Vector2 sameUvPoint; // 직전 프레임에 마우스가 위치한 대상 UV 지점 (동일 위치에 중첩해서 그리는 현상 방지)
    
    private float timer;
    int waitingTime;
    private ComputeShader colorRatioComputeShader; // ColorRatioCompute Shader
    private ComputeShader fadeTextureComputeShader; // FadeTextureCompute Shader
    private ComputeBuffer resultBuffer;

    //private void OnEnable()
    private void Start() //임시 수정
    {
        Init();
        InitRenderTexture();
        InitBrushTexture();

        timer = 0.0f;
        waitingTime = 5;
    }
    void Update()
    {
        timer += Time.deltaTime;

        if (timer > waitingTime)
        {
            timer = 0;
            WaterMark();
        }
    }

    private void Init()
    {
        // MeshRenderer 가져오기
        TryGetComponent(out _mr);
        Renderer renderer = GetComponent<Renderer>();
        if (renderer != null)
        {
            // 단일 마테리얼 가져오기
            curMaterial = renderer.material;
        }
    }
    //렌더 텍스처 초기화
    private void InitRenderTexture()
    {
        renderMaskTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture.enableRandomWrite = true; // UAV 사용 플래그 설정
        renderWaterTexture.Create();

        Graphics.Blit(maskTexture, renderMaskTexture);

        // 마테리얼 프로퍼티 블록 이용하여 배칭 유지하고
        // 마테리얼의 프로퍼티에 렌더 텍스쳐 넣어주기
        TextureBlock.SetTexture(MaskPaintTexPropertyName, renderMaskTexture);
        TextureBlock.SetTexture(WaterPaintTexPropertyName, renderWaterTexture);
        _mr.SetPropertyBlock(TextureBlock);

        resultBuffer = new ComputeBuffer(resolution * resolution, sizeof(int));
    }
    
    private void InitBrushTexture()
    {
        brushController = FindObjectOfType<BrushController>();
        if(brushController == null)
        {
            Debug.Log("brushController가 없습니다.");
            return;
        }
        whiteBrushTexture = brushController.WaterBrushTexture;
        blackBrushTexture = brushController.EraserBrushTexture;
        brushSize = brushController.BrushSize;
        colorRatioComputeShader = brushController.ColorRatioComputeShader;
        fadeTextureComputeShader = brushController.FadeTextureComputeShader;
    }
    public void Wash(RaycastHit raycastHit)
    {
        Paint(raycastHit);
    }
    private void Paint(in RaycastHit hit)
    {
        MeshCollider currentCollider = hit.collider as MeshCollider;
        if (currentCollider != null)
        {
            // 대상 참조 갱신
            if (prevCollider == null || prevCollider != currentCollider)
            {
                prevCollider = currentCollider;
                currentCollider.TryGetComponent(out prevCollider);
            }

            // 동일한 지점에는 중첩하여 다시 그리지 않음
            Vector2 hitTextureCoord = hit.textureCoord;

            if (sameUvPoint != hitTextureCoord)
            {
                //Debug.Log($"Hit texture coord: {hitTextureCoord}");
                sameUvPoint = hitTextureCoord;
                Vector2 pixelUV = hitTextureCoord;
                //DrawTexture(pixelUV.x, pixelUV.y, brushSize, CopiedBrushTexture);
                PaintBrush(blackBrushTexture, renderMaskTexture, pixelUV, brushSize);
                PaintBrush(whiteBrushTexture, renderWaterTexture, pixelUV, brushSize);
                //StopCoroutine(WaterMark_Co());
                //StartCoroutine(WaterMark_Co());
            }
        }
    }
    private void PaintBrush(Texture2D brush, RenderTexture texture, Vector2 uv, float size)
    {
        RenderTexture.active = texture;         // 페인팅을 위해 활성 렌더 텍스쳐 임시 할당
        GL.PushMatrix();                                  // 매트릭스 백업
        GL.LoadPixelMatrix(0, resolution, resolution, 0); // 알맞은 크기로 픽셀 매트릭스 설정

        float brushPixelSize = brushSize * resolution * size;
        uv.x *= resolution;
        uv.y *= resolution;

        // 렌더 텍스쳐에 브러시 텍스쳐를 이용해 그리기
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSize * 0.5f,
                (texture.height - uv.y) - brushPixelSize * 0.5f,
                brushPixelSize,
                brushPixelSize
            ),
            brush
        );

        GL.PopMatrix();              // 매트릭스 복구
        RenderTexture.active = null; // 활성 렌더 텍스쳐 해제
    }

    void WaterMark()
    {
        Color targetColor = Color.black;
        float colorTolerance = 0.1f;
        float colorRatio = CalculateColorRatio(renderMaskTexture, targetColor, colorTolerance);
        Debug.Log("Color match ratio: " + (colorRatio * 100) + "%");

        // 텍스처의 색상을 점점 흐리게 만듦
        //FadeRenderTexture(renderWaterTexture, fadeAmount);
    }
    private float CalculateColorRatio(RenderTexture renderTexture, Color targetColor, float tolerance)
    {
        int kernelHandle = colorRatioComputeShader.FindKernel("CalculateColorRatio");

        colorRatioComputeShader.SetTexture(kernelHandle, "InputTexture", renderTexture);
        colorRatioComputeShader.SetBuffer(kernelHandle, "ResultBuffer", resultBuffer);
        colorRatioComputeShader.SetVector("TargetColor", targetColor);
        colorRatioComputeShader.SetFloat("Tolerance", tolerance);

        int threadGroupsX = Mathf.CeilToInt(renderTexture.width);
        int threadGroupsY = Mathf.CeilToInt(renderTexture.height);
        colorRatioComputeShader.Dispatch(kernelHandle, threadGroupsX, threadGroupsY, 1);

        int[] resultData = new int[resolution * resolution];
        resultBuffer.GetData(resultData);

        int matchingPixels = 0;
        foreach (int match in resultData)
        {
            matchingPixels += match;
        }

        return (float)matchingPixels / (resolution * resolution);
    }
    private void FadeRenderTexture(RenderTexture renderTexture, float amount)
    {
        int kernelHandle = fadeTextureComputeShader.FindKernel("FadeTexture");

        fadeTextureComputeShader.SetTexture(kernelHandle, "InputTexture", renderTexture);
        fadeTextureComputeShader.SetTexture(kernelHandle, "Result", renderTexture);
        fadeTextureComputeShader.SetFloat("FadeAmount", amount);

        int threadGroupsX = Mathf.CeilToInt(renderTexture.width / 16.0f);
        int threadGroupsY = Mathf.CeilToInt(renderTexture.height / 16.0f);
        fadeTextureComputeShader.Dispatch(kernelHandle, threadGroupsX, threadGroupsY, 1);
    }
    private void OnDestroy()
    {
        if (resultBuffer != null)
        {
            resultBuffer.Release();
        }
    }
}
