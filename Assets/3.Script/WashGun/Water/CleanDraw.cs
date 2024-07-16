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

    private float fadeAmount = 0.01f; // ������� ����

    private MeshCollider prevCollider;
    private Vector2 sameUvPoint; // ���� �����ӿ� ���콺�� ��ġ�� ��� UV ���� (���� ��ġ�� ��ø�ؼ� �׸��� ���� ����)
    //private void OnEnable()
    private void Start() //�ӽ� ����
    {
        Init();
        InitRenderTexture();
        InitBrushTexture();
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
        Graphics.Blit(maskTexture, renderMaskTexture);

        // ���׸��� ������Ƽ ��� �̿��Ͽ� ��Ī �����ϰ�
        // ���׸����� ������Ƽ�� ���� �ؽ��� �־��ֱ�
        TextureBlock.SetTexture(MaskPaintTexPropertyName, renderMaskTexture);
        TextureBlock.SetTexture(WaterPaintTexPropertyName, renderWaterTexture);
        _mr.SetPropertyBlock(TextureBlock);
    }
    
    private void InitBrushTexture()
    {
        brushController = FindObjectOfType<BrushController>();
        if(brushController == null)
        {
            Debug.Log("brushController�� �����ϴ�.");
            return;
        }
        whiteBrushTexture = brushController.WhiteBrushTexture;
        blackBrushTexture = brushController.BlackBrushTexture;
        brushSize = brushController.BrushSize;
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
                Debug.Log($"Hit texture coord: {hitTextureCoord}");
                sameUvPoint = hitTextureCoord;
                Vector2 pixelUV = hitTextureCoord;
                //DrawTexture(pixelUV.x, pixelUV.y, brushSize, CopiedBrushTexture);
                PaintBrush(blackBrushTexture, renderMaskTexture, pixelUV, brushSize);
                PaintBrush(whiteBrushTexture, renderWaterTexture, pixelUV, brushSize);
                StopCoroutine(WaterMark_Co());
                StartCoroutine(WaterMark_Co());
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
    IEnumerator WaterMark_Co()
    {
        while (true)
        {
            Color targetColor = Color.clear;
            float colorTolerance = 0.01f;
            Texture2D texture2D = ConvertRenderTextureToTexture2D(renderWaterTexture);
            float colorRatio = CalculateColorRatio(texture2D, targetColor, colorTolerance);
            //Debug.Log("Color match ratio: " + (colorRatio * 100) + "%");
            if(colorRatio >= 1f)
            {
                yield break;
            }

            // �ؽ�ó�� ������ ���� �帮�� ����
            Texture2D fadedTexture = FadeTexture(texture2D, fadeAmount);
            ApplyTextureToRenderTexture(fadedTexture, renderWaterTexture);

            yield return new WaitForSeconds(3f);
        }
    }

    private void ApplyTextureToRenderTexture(Texture2D texture, RenderTexture rt)
    {
        RenderTexture.active = rt;
        Graphics.Blit(texture, rt);
        RenderTexture.active = null;
    }

    private Texture2D FadeTexture(Texture2D texture, float amount)
    {
        Color[] pixels = texture.GetPixels();
        for (int i = 0; i < pixels.Length; i++)
        {
            pixels[i] = new Color(
                Mathf.Max(0, pixels[i].r - amount),
                Mathf.Max(0, pixels[i].g - amount),
                Mathf.Max(0, pixels[i].b - amount),
                Mathf.Max(0, pixels[i].a - amount)
            );
        }
        texture.SetPixels(pixels);
        texture.Apply();
        return texture;
    }
    private Texture2D ConvertRenderTextureToTexture2D(RenderTexture rt)
    {
        Texture2D texture2D = new Texture2D(rt.width, rt.height, TextureFormat.RGBA32, false);
        RenderTexture.active = rt;
        texture2D.ReadPixels(new Rect(0, 0, rt.width, rt.height), 0, 0);
        texture2D.Apply();
        RenderTexture.active = null;
        return texture2D;
    }
    private float CalculateColorRatio(Texture2D texture, Color targetColor, float tolerance)
    {
        Color[] pixels = texture.GetPixels();
        int totalPixels = pixels.Length;
        int matchingPixels = 0;

        foreach (Color pixel in pixels)
        {
            if (ColorsAreSimilar(pixel, targetColor, tolerance))
            {
                matchingPixels++;
            }
        }

        return (float)matchingPixels / totalPixels;
    }
    private bool ColorsAreSimilar(Color a, Color b, float tolerance)
    {
        return Mathf.Abs(a.r - b.r) < tolerance &&
               Mathf.Abs(a.g - b.g) < tolerance &&
               Mathf.Abs(a.b - b.b) < tolerance &&
               Mathf.Abs(a.a - b.a) < tolerance;
    }
}
