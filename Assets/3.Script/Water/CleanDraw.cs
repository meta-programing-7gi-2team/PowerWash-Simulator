using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CleanDraw : MonoBehaviour, IObserver
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
    private static readonly string WaterPaintTexPropertyName = "_WaterTex";
    private static readonly string MainPaintTexPropertyName = "_MainTex";

    private MeshRenderer _mr;

    public int resolution = 128;

    [SerializeField] private RenderTexture renderMaskTexture; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private RenderTexture renderWaterTexture; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private Texture2D maskTexture; // ���� �ؽ����� ���� �ؽ�ó

    private BrushController brushController;
    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser
    private float brushSize; // �귯�� ũ�� ����

    private Material initMaterial;
    private Material cleanMaterial;
    private Material dustMaterial;
    private DustManager dustManager;
    private bool isCleanCheck = false;
    private bool isCleanCheckComplete = false;
    private int cleanCount = 100;

    private float fadeAmount = 0.05f; // ������� ����

    private MeshCollider prevCollider;
    private Vector2 sameUvPoint; // ���� �����ӿ� ���콺�� ��ġ�� ��� UV ���� (���� ��ġ�� ��ø�ؼ� �׸��� ���� ����)
    
    private ComputeShader colorRatioComputeShader; // ColorRatioCompute Shader
    private ComputeShader fadeTextureComputeShader; // FadeTextureCompute Shader
    private ComputeBuffer resultBuffer;
    private int initCount;
    private int curCount;
    private float initColorRatio;
    public float ColorRatio { get; private set; }

    public EnumObject.Spongebob Spongebob;
    public EnumObject.Pineapple Pineapple;
    public EnumObject.Patrick Patrick;
    public EnumObject.Squidward Squidward;
    public EnumObject.KrustyKrab KrustyKrab;


    //private void OnEnable()
    private void Start()
    {
        Init();
        InitBrushTexture();
        InitRenderTexture();
        InitMaterial();

        initColorRatio = CalculateColorRatio(renderMaskTexture);
    }
    private void Update()
    {
        if (Time.frameCount % 60 == 0) // 60 ������(1��)���� ���̵� ����
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

    public void DustSparkle()
    {
        // ���� ��¦��
        if (dustManager.IsChange())
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
        // �Ϸ� ��¦��
        _mr.material = cleanMaterial;
    }
    private void Init()
    {
        // MeshRenderer ��������
        TryGetComponent(out _mr);
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
        initCount = Mathf.CeilToInt(brushController.ColorNum / fadeAmount);
        curCount = 0;
    }
    private void InitMaterial()
    {
        Renderer renderer = GetComponent<Renderer>();
        if (renderer != null)
        {
            // ���� ���׸��� ��������
            initMaterial = renderer.material;
        }

        dustManager = FindObjectOfType<DustManager>();
        if (dustManager != null)
        {
            dustManager.RegisterObserver(this);
        }
        Texture mainTex = initMaterial.GetTexture(MainPaintTexPropertyName);

        cleanMaterial = dustManager.GetCleanMrial();
        cleanMaterial.SetTexture(MainPaintTexPropertyName, mainTex);

        dustMaterial = dustManager.GetDustMaterial();
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
                PaintBrush(blackBrushTexture, renderMaskTexture, pixelUV, brushSize);
                PaintBrush(whiteBrushTexture, renderWaterTexture, pixelUV, brushSize);
                curCount = initCount;
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
        // ���� û�� �Ϸᵵ
        ApplyCalculateRatio();

        // �� �ؽ�ó �帮��
        ApplyFadeEffect(renderWaterTexture, fadeAmount);
    }
    private void ApplyCalculateRatio()
    {
        if (ColorRatio < 100)
        {
            float colorRatio = CalculateColorRatio(renderMaskTexture) - initColorRatio;
            ColorRatio = (colorRatio * 100.0f) / (1.0f - initColorRatio);
            //Todo: UI�ؽ�Ʈ ǥ�� �ʿ�
            UIManager.instance.AllObjcetList();
        }
        else if(!isCleanCheck)
        {
            isCleanCheck = true;
            CleanSparkle();
            isCleanCheckComplete = true;
        }
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
    private void OnDestroy()
    {
        if (resultBuffer != null)
        {
            resultBuffer.Release();
        }
        if (dustManager != null)
        {
            dustManager.RemoveObserver(this);
        }
    }
}
