using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class CleanDraw : MonoBehaviour, IDustObserver, ISaveObserver
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
    private static readonly string WaterPaintTexPropertyName = "_WaterTex";
    private static readonly string MainPaintTexPropertyName = "_MainTex";

    private MeshRenderer _mr;

    public int resolution = 128;

    [SerializeField] private RenderTexture renderMaskTexture; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private RenderTexture renderWaterTexture; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private Texture2D maskTexture; // 렌더 텍스쳐의 원본 텍스처
    private Texture2D maskSavedTexture; // 렌더 텍스쳐의 저장본 텍스처

    private BrushController brushController;
    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser
    private float brushSizeX; // 브러쉬 크기 기준
    private float brushSizeY; // 브러쉬 크기 기준

    private Material initMaterial;
    private Material cleanMaterial;
    private Material dustMaterial;
    private DustObserver dustObserver;
    private bool isCleanCheck = false;
    private bool isCleanCheckComplete = false;
    private int cleanCount = 100;

    private float fadeAmount = 0.05f; // 흐려지는 정도

    private MeshCollider prevCollider;
    private Vector2 sameUvPoint; // 직전 프레임에 마우스가 위치한 대상 UV 지점 (동일 위치에 중첩해서 그리는 현상 방지)
    
    private ComputeShader colorRatioComputeShader; // ColorRatioCompute Shader
    private ComputeShader fadeTextureComputeShader; // FadeTextureCompute Shader
    private ComputeBuffer resultBuffer;
    private int initCount;
    private int curCount;
    private float initColorRatio;
    [SerializeField] [Range(1, 100)] private int cleanRatio = 100;
    public float ColorRatio { get; private set; }
    public float CleanRatio => cleanRatio;

    public EnumObject.Spongebob Spongebob;
    public EnumObject.Pineapple Pineapple;
    public EnumObject.Patrick Patrick;
    public EnumObject.Squidward Squidward;
    public EnumObject.KrustyKrab KrustyKrab;
    public EnumObject.ChumBucket ChumBucket;

    [SerializeField] private string FileName;
    private string DirName = DefaultName.DirName;
    private MapManager mapManager;
    private SaveObserver saveObserver;

    private void Start()
    {
        Init();
        InitBrushTexture();
        InitRatio();
        InitRenderTexture();
        InitMaterial();
    }
    private void Update()
    {
        if (Time.frameCount % 60 == 0) // 60 프레임(1초)마다 페이드 적용
        {
            if (curCount > 0)
            {
                WaterMark();
                curCount--;
            }
        }
        if (isCleanCheckComplete)
        {
            cleanCount--;
            float colorSize = 0.01f * cleanCount;
            _mr.material.SetColor("_Color", new Color(1, 1, 1, colorSize));
            if (cleanCount < 1)
            {
                isCleanCheckComplete = false;
                _mr.material = initMaterial;
            }
        }
    }
    public void Save()
    {
        SaveRenderTextureToFile(renderMaskTexture, FileName);

        mapManager.Saved(); // json 파일에 저장했음을 표시
    }
    public void DustSparkle()
    {
        // 먼지 반짝이
        if (dustObserver.IsChange())
        {
            _mr.material = initMaterial;
        }
        else
        {
            _mr.material = dustMaterial;
        }
    }
    private void CleanSparkle()
    {
        // 완료 반짝이
        _mr.material = cleanMaterial;
        AudioManager.instance.PlaySFX_UI("WorkComplete");
    }
    private void Init()
    {
        // MeshRenderer 가져오기
        TryGetComponent(out _mr);
    }
    private void InitMapData()
    {
        mapManager = new MapManager();
        mapManager.FileName = FileName;
        mapManager.LoadMap();
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
        brushSizeX = brushController.BrushSizeX;
        brushSizeY = brushController.BrushSizeY;
        colorRatioComputeShader = brushController.ColorRatioComputeShader;
        fadeTextureComputeShader = brushController.FadeTextureComputeShader;
        initCount = Mathf.CeilToInt(brushController.ColorNum / fadeAmount);
        curCount = 0;
    }
    private void InitRatio()
    {
        renderMaskTexture = new RenderTexture(resolution, resolution, 32);
        Graphics.Blit(maskTexture, renderMaskTexture);

        resultBuffer = new ComputeBuffer(resolution * resolution, sizeof(int));

        initColorRatio = CalculateColorRatio(renderMaskTexture);
    }
    //렌더 텍스처 초기화
    private void InitRenderTexture()
    {
        renderMaskTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture = new RenderTexture(resolution, resolution, 32);
        renderWaterTexture.enableRandomWrite = true; // UAV 사용 플래그 설정
        renderWaterTexture.Create();

        InitMapData();
        if (mapManager.mapData.isSaved)
        {
            maskSavedTexture = LoadTextureFromFile(FileName);
            Graphics.Blit(maskSavedTexture, renderMaskTexture);
            ApplyCalculateRatio(); //초기 퍼센트 데이터 불러옴
            if(ColorRatio.Equals(100))
            {
                isCleanCheck = true;
                isCleanCheckComplete = true;
            }
        }
        else
        {
            Graphics.Blit(maskTexture, renderMaskTexture);
        }

        // 마테리얼 프로퍼티 블록 이용하여 배칭 유지하고
        // 마테리얼의 프로퍼티에 렌더 텍스쳐 넣어주기
        TextureBlock.SetTexture(MaskPaintTexPropertyName, renderMaskTexture);
        TextureBlock.SetTexture(WaterPaintTexPropertyName, renderWaterTexture);
        _mr.SetPropertyBlock(TextureBlock);
    }

    private void InitMaterial()
    {
        Renderer renderer = GetComponent<Renderer>();
        if (renderer != null)
        {
            // 단일 마테리얼 가져오기
            initMaterial = renderer.material;
        }

        dustObserver = FindObjectOfType<DustObserver>();
        if (dustObserver != null)
        {
            dustObserver.RegisterObserver(this);
        }
        saveObserver = FindObjectOfType<SaveObserver>();
        if (saveObserver != null)
        {
            saveObserver.RegisterObserver(this);
        }
        Texture mainTex = initMaterial.GetTexture(MainPaintTexPropertyName);

        cleanMaterial = dustObserver.GetCleanMrial();
        cleanMaterial.SetTexture(MainPaintTexPropertyName, mainTex);

        dustMaterial = dustObserver.GetDustMaterial();
        dustMaterial.SetTexture(MaskPaintTexPropertyName, renderMaskTexture);
        dustMaterial.SetTexture(MainPaintTexPropertyName, mainTex);
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
                PaintBrush(blackBrushTexture, renderMaskTexture, pixelUV);
                PaintBrush(whiteBrushTexture, renderWaterTexture, pixelUV);
                curCount = initCount;
                //SaveRenderTextureToFile(renderMaskTexture, FileName);
            }
        }
    }
    private void PaintBrush(Texture2D brush, RenderTexture texture, Vector2 uv)
    {
        RenderTexture.active = texture;         // 페인팅을 위해 활성 렌더 텍스쳐 임시 할당
        GL.PushMatrix();                                  // 매트릭스 백업
        GL.LoadPixelMatrix(0, resolution, resolution, 0); // 알맞은 크기로 픽셀 매트릭스 설정

        float brushPixelSizeX;
        float brushPixelSizeY;
        if (NozzleControl.isVertical)
        {
            brushPixelSizeX = brushSizeY * resolution * brushSizeY;
            brushPixelSizeY = brushSizeX * resolution * brushSizeX;
        }
        else
        {
            brushPixelSizeX = brushSizeX * resolution * brushSizeX;
            brushPixelSizeY = brushSizeY * resolution * brushSizeX;
        }
        uv.x *= resolution;
        uv.y *= resolution;

        // 렌더 텍스쳐에 브러시 텍스쳐를 이용해 그리기
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSizeX * 0.5f,
                (texture.height - uv.y) - brushPixelSizeY * 0.5f,
                brushPixelSizeX,
                brushPixelSizeY
            ),
            brush
        );

        GL.PopMatrix();              // 매트릭스 복구
        RenderTexture.active = null; // 활성 렌더 텍스쳐 해제
    }

    void WaterMark()
    {
        // 오염 청소 완료도
        ApplyCalculateRatio();

        // 물 텍스처 흐리게
        ApplyFadeEffect(renderWaterTexture, fadeAmount);
    }

    private void ApplyCalculateRatio()
    {
        if (ColorRatio < cleanRatio)
        {
            float colorRatio = CalculateColorRatio(renderMaskTexture) - initColorRatio;
            ColorRatio = (colorRatio * 100.0f) / (1.0f - initColorRatio);
            UIManager.instance.CleanObject();
        }
        else if(!isCleanCheck)
        {
            ColorRatio = 100;
            ClearTexture();
            isCleanCheck = true;
            CleanSparkle();
            isCleanCheckComplete = true;

            UIManager.instance.CleanObject();
            MoneyData amount = AmountManager.instance.GetAmount(Spongebob, Pineapple, Patrick, Squidward, KrustyKrab, ChumBucket);
            GameManager.instance.AddAmount(amount);
        }
    }
    
    private void ClearTexture()
    {
        RenderTexture.active = renderMaskTexture;

        Texture2D texture = new Texture2D(renderMaskTexture.width, renderMaskTexture.height);
        Color[] colors = new Color[renderMaskTexture.width * renderMaskTexture.height];

        for (int i = 0; i < colors.Length; i++)
        {
            colors[i] = Color.black;
        }
        texture.SetPixels(colors);
        texture.Apply();

        Graphics.Blit(texture, renderMaskTexture);
        RenderTexture.active = null;
    }
    private float CalculateColorRatio(RenderTexture renderTexture)
    {
        Color targetColor = Color.black;
        float tolerance = 0.1f;
        int kernelHandle = colorRatioComputeShader.FindKernel("CalculateColorRatio");

        colorRatioComputeShader.SetTexture(kernelHandle, "InputTexture", renderTexture);
        colorRatioComputeShader.SetBuffer(kernelHandle, "ResultBuffer", resultBuffer);
        colorRatioComputeShader.SetVector("TargetColor", targetColor);
        colorRatioComputeShader.SetFloat("Tolerance", tolerance);

        int threadGroupsX = Mathf.CeilToInt(renderTexture.width / 16);



        int threadGroupsY = Mathf.CeilToInt(renderTexture.height / 16);
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
    private void ApplyFadeEffect(RenderTexture renderTexture, float amount)
    {
        int kernelHandle = fadeTextureComputeShader.FindKernel("FadeTexture");

        fadeTextureComputeShader.SetTexture(kernelHandle, "Result", renderTexture);
        fadeTextureComputeShader.SetFloat("FadeAmount", amount);

        int threadGroupsX = Mathf.CeilToInt(renderTexture.width / 16);
        int threadGroupsY = Mathf.CeilToInt(renderTexture.height / 16);
        fadeTextureComputeShader.Dispatch(kernelHandle, threadGroupsX, threadGroupsY, 1);
    }
    public void SaveRenderTextureToFile(RenderTexture rt, string fileName)
    {
        string dirName = Path.Combine(Application.dataPath, DirName);
        if (!Directory.Exists(dirName))
        {
            Directory.CreateDirectory(dirName);
        }
        string filePath = Path.Combine(Application.dataPath, DirName, fileName + ".png");

        RenderTexture currentRT = RenderTexture.active;
        RenderTexture.active = rt;

        Texture2D texture = new Texture2D(rt.width, rt.height, TextureFormat.RGB24, false);
        texture.ReadPixels(new Rect(0, 0, rt.width, rt.height), 0, 0);
        texture.Apply();

        byte[] bytes = texture.EncodeToPNG();
        File.WriteAllBytes(filePath, bytes);

        RenderTexture.active = currentRT;
    }
    public Texture2D LoadTextureFromFile(string fileName)
    {
        string filePath = Path.Combine(Application.dataPath, DirName, fileName + ".png");
        if (File.Exists(filePath))
        {
            byte[] fileData = File.ReadAllBytes(filePath);
            Texture2D texture = new Texture2D(2, 2);
            texture.LoadImage(fileData); // Automatically resizes the texture dimensions.
            return texture;
        }
        else
        {
            Debug.LogError("File not found: " + filePath);
            return null;
        }
    }
    private void OnDestroy()
    {
        if (resultBuffer != null)
        {
            resultBuffer.Release();
        }
        if (dustObserver != null)
        {
            dustObserver.RemoveObserver(this);
        }
    }
}
