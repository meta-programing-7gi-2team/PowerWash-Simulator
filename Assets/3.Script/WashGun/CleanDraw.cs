using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class CleanDraw : MonoBehaviour
{
    private static Texture2D ClearTex
    {
        get
        {
            if (_clearTex == null)
            {
                _clearTex = new Texture2D(1, 1);
                _clearTex.SetPixel(0, 0, Color.clear);
                _clearTex.Apply();
            }
            return _clearTex;
        }
    }
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

    private static Texture2D _clearTex;
    private MaterialPropertyBlock _textureBlock;

    private static readonly string PaintTexPropertyName = "_MaskTex"; // ���̴����� ������ texture�� �̸�

    private MeshRenderer _mr;

    public int resolution = 2048;

    [SerializeField] private RenderTexture renderTexture; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private Texture2D maskTexture; // �귯�÷� �׷��� ��� ���� �ؽ���

    [SerializeField, Range(0.01f, 1f)] private float brushSize = 0.2f; // �귯�� ũ�� ����
    [SerializeField, Range(0.01f, 1f)] private float waterBrushIntensity = 0.1f;
    [SerializeField, Range(0.01f, 1f)] private float eraserBrushIntensity = 0.1f;

    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser

    private MeshCollider prevCollider;
    //private Texture2D CopiedBrushTexture; // �ǽð����� ���� ĥ�ϴµ� ���Ǵ� �귯�� �ؽ��� ī�Ǻ�
    private Vector2 sameUvPoint; // ���� �����ӿ� ���콺�� ��ġ�� ��� UV ���� (���� ��ġ�� ��ø�ؼ� �׸��� ���� ����)
    private void OnEnable()
    {
        Init();
        InitRenderTexture();
        InitBrushTexture();
    }

    private void Init()
    {
        // MeshRenderer ��������
        TryGetComponent(out _mr);
    }
    //���� �ؽ�ó �ʱ�ȭ
    private void InitRenderTexture()
    {
        //renderTexture = new RenderTexture(resolution, resolution, 32);
        Graphics.Blit(maskTexture, renderTexture);

        // ���׸��� ������Ƽ ��� �̿��Ͽ� ��Ī �����ϰ�
        // ���׸����� ������Ƽ�� ���� �ؽ��� �־��ֱ�
        TextureBlock.SetTexture(PaintTexPropertyName, renderTexture);
        _mr.SetPropertyBlock(TextureBlock);
    }
    //�귯�� �ؽ�ó �ʱ�ȭ
    private void InitBrushTexture()
    {
        whiteBrushTexture = CreateBrushTexture(Color.white, waterBrushIntensity);
        blackBrushTexture = CreateBrushTexture(Color.black, eraserBrushIntensity);
    }
    #region CreateBrushTexture
    private Texture2D CreateBrushTexture(Color color, float intensity)
    {
        int res = resolution / 2;
        float hRes = res * 0.5f;
        float sqrSize = hRes * hRes;

        Texture2D texture = new Texture2D(res, res);
        texture.filterMode = FilterMode.Bilinear;

        for (int y = 0; y < res; y++)
        {
            for (int x = 0; x < res; x++)
            {
                // Sqaure Length From Center
                float sqrLen = (hRes - x) * (hRes - x) + (hRes - y) * (hRes - y);
                float alpha = Mathf.Max(sqrSize - sqrLen, 0f) / sqrSize;

                // Soft
                alpha = Mathf.Pow(alpha, 2f);

                color.a = alpha * intensity;
                texture.SetPixel(x, y, color);
            }
        }

        texture.Apply();
        return texture;
    }
    #endregion
    public void Wash(Vector3 contactPoint)
    {
        float snowSize = UnityEngine.Random.Range(0.5f, 2.0f);
        Paint(contactPoint, snowSize, true);
    }
    private void Paint(in Vector3 contactPoint, float size = 1f, bool pileOrClear = true)
    {

        if (Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out var hit))
        {
            Debug.Log($"Raycast hit at: {hit.point}");

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
                Debug.Log($"Hit texture coord: {hitTextureCoord}");

                if (sameUvPoint != hitTextureCoord)
                {
                    sameUvPoint = hitTextureCoord;
                    Vector2 pixelUV = hitTextureCoord;
                    //DrawTexture(pixelUV.x, pixelUV.y, brushSize, CopiedBrushTexture);
                    PaintBrush(blackBrushTexture, pixelUV, brushSize);
                }
            }
        }
        //// ���� �ε��� 3D ��ǥ�κ��� 2D UV ��ǥ ���
        //// Plane�� scale 1�� ��ǥ 10�̹Ƿ� 10���� ������
        //Vector3 normalizedVec3 = (contactPoint - transform.position) / 10f;
        //normalizedVec3.x /= transform.lossyScale.x;
        //normalizedVec3.z /= transform.lossyScale.z;

        //Vector2 uv = new Vector2(normalizedVec3.x + 0.5f, normalizedVec3.z + 0.5f);

        //// UV ���� �ٱ��̸� ����
        //if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
        //    return;

        //uv = Vector2.one - uv; // ��ǥ ����

        //// 1. �ױ�
        //if (pileOrClear)
        //{
        //    PaintBrush(whiteBrushTexture, uv, size);
        //}
        //// 2. �����
        //else
        //{
        //    PaintBrush(blackBrushTexture, uv, size);
        //}
    }
    private void PaintBrush(Texture2D brush, Vector2 uv, float size)
    {
        RenderTexture.active = renderTexture;         // �������� ���� Ȱ�� ���� �ؽ��� �ӽ� �Ҵ�
        GL.PushMatrix();                                  // ��Ʈ���� ���
        GL.LoadPixelMatrix(0, resolution, resolution, 0); // �˸��� ũ��� �ȼ� ��Ʈ���� ����

        float brushPixelSize = brushSize * resolution * size;
        uv.x *= resolution;
        uv.y *= resolution;

        // ���� �ؽ��Ŀ� �귯�� �ؽ��ĸ� �̿��� �׸���
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSize * 0.5f,
                (renderTexture.height - uv.y) - brushPixelSize * 0.5f,
                brushPixelSize,
                brushPixelSize
            ),
            brush
        );

        GL.PopMatrix();              // ��Ʈ���� ����
        RenderTexture.active = null; // Ȱ�� ���� �ؽ��� ����
    }
}
