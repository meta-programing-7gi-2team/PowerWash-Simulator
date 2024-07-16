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

    private static readonly string MaskPaintTexPropertyName = "_MaskTex"; // ���̴����� ������ texture�� �̸�
    private static readonly string WaterPaintTexPropertyName = "_WaterTex"; // ���̴����� ������ texture�� �̸�

    private MeshRenderer _mr;

    public int resolution = 128;

    [SerializeField] private RenderTexture renderMaskTexture; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private RenderTexture renderWaterTexture; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private Texture2D maskTexture; // ���� �ؽ����� ���� �ؽ�ó

    private BrushController brushController;
    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser
    private float brushSize; // �귯�� ũ�� ����
    private Material curMaterial;

    private float fadeAmount = 0.1f; // ������� ����

    private MeshCollider prevCollider;
    private Vector2 sameUvPoint; // ���� �����ӿ� ���콺�� ��ġ�� ��� UV ���� (���� ��ġ�� ��ø�ؼ� �׸��� ���� ����)
    
    private float timer;
    int waitingTime;
    private ComputeShader colorRatioComputeShader; // ColorRatioCompute Shader
    private ComputeShader fadeTextureComputeShader; // FadeTextureCompute Shader
    private ComputeBuffer resultBuffer;

    //private void OnEnable()
    private void Start() //�ӽ� ����
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
        // MeshRenderer ��������
        TryGetComponent(out _mr);
        Renderer renderer = GetComponent<Renderer>();
        if (renderer != null)
        {
            // ���� ���׸��� ��������
            curMaterial = renderer.material;
        }
    }
    //���� �ؽ�ó �ʱ�ȭ
    private void InitRenderTexture()
    {
        renderMaskTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture.enableRandomWrite = true; // UAV ��� �÷��� ����
        renderWaterTexture.Create();

        Graphics.Blit(maskTexture, renderMaskTexture);

        // ���׸��� ������Ƽ ��� �̿��Ͽ� ��Ī �����ϰ�
        // ���׸����� ������Ƽ�� ���� �ؽ��� �־��ֱ�
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
            Debug.Log("brushController�� �����ϴ�.");
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
            // ��� ���� ����
            if (prevCollider == null || prevCollider != currentCollider)
            {
                prevCollider = currentCollider;
                currentCollider.TryGetComponent(out prevCollider);
            }

            // ������ �������� ��ø�Ͽ� �ٽ� �׸��� ����
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
        RenderTexture.active = texture;         // �������� ���� Ȱ�� ���� �ؽ��� �ӽ� �Ҵ�
        GL.PushMatrix();                                  // ��Ʈ���� ���
        GL.LoadPixelMatrix(0, resolution, resolution, 0); // �˸��� ũ��� �ȼ� ��Ʈ���� ����

        float brushPixelSize = brushSize * resolution * size;
        uv.x *= resolution;
        uv.y *= resolution;

        // ���� �ؽ��Ŀ� �귯�� �ؽ��ĸ� �̿��� �׸���
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSize * 0.5f,
                (texture.height - uv.y) - brushPixelSize * 0.5f,
                brushPixelSize,
                brushPixelSize
            ),
            brush
        );

        GL.PopMatrix();              // ��Ʈ���� ����
        RenderTexture.active = null; // Ȱ�� ���� �ؽ��� ����
    }

    void WaterMark()
    {
        Color targetColor = Color.black;
        float colorTolerance = 0.1f;
        float colorRatio = CalculateColorRatio(renderMaskTexture, targetColor, colorTolerance);
        Debug.Log("Color match ratio: " + (colorRatio * 100) + "%");

        // �ؽ�ó�� ������ ���� �帮�� ����
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
