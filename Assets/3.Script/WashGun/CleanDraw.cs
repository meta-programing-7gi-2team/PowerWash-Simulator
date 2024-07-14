using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class CleanDraw : MonoBehaviour
{
    [SerializeField] private Material targetMaterial; // ���� �ؽ��ĸ� ���� �ؽ��ķ� ������ ��� ���׸���
    private RenderTexture brushTex; // �귯�÷� �׷��� ��� ���� �ؽ���
    [SerializeField] private Texture2D maskTex;
    [SerializeField, Range(0.01f, 1f)] private float brushIntensity = 0.1f;
    private float brushSize = 0.1f; // �귯�� ũ��
    public Color targetColor = Color.white; // Ÿ�� ����
    public float colorTolerance = 0.1f; // ���� ��� ����

    private Texture2D BrushTexture; // Painter
    private const int Resolution = 2048;
    private void Awake()
    {
        //maskTex = targetMaterial.GetTexture("_MaskTex") as Texture2D;

        //ConveretTexture2dIntoRenderTexture(out brushTex, maskTex, Resolution);

        brushTex = new RenderTexture(Resolution, Resolution, 0);
        brushTex.filterMode = FilterMode.Point;
        brushTex.Create();

        targetMaterial.SetTexture("_MaskTex", brushTex);
        BrushTexture = CreateBrushTexture(targetColor, brushIntensity);
    }
    private static void ConveretTexture2dIntoRenderTexture(out RenderTexture out_renderTexture, in Texture2D input_texture2d, int resolution)
    {
        out_renderTexture = new RenderTexture(resolution, resolution, 0);
        out_renderTexture.enableRandomWrite = true;
        RenderTexture.active = out_renderTexture;
        Graphics.Blit(input_texture2d, out_renderTexture);
    }
    private Texture2D CreateBrushTexture(Color color, float intensity)
    {
        int res = Resolution / 2;
        float hRes = res * 0.5f;
        float sqrSize = hRes * hRes;

        Texture2D texture = new Texture2D(Resolution, Resolution);
        texture.filterMode = FilterMode.Bilinear;
        //texture.filterMode = FilterMode.Point;

        for (int y = 0; y < res; y++)
        {
            for (int x = 0; x < res; x++)
            {
                // Sqaure Length From Center
                //float sqrLen = (hRes - x) * (hRes - x) + (hRes - y) * (hRes - y);
                //float alpha = Mathf.Max(sqrSize - sqrLen, 0f) / sqrSize;

                //// Soft
                //alpha = Mathf.Pow(alpha, 2f);

                //color.a = alpha * intensity;
                texture.SetPixel(x, y, color);
            }
        }

        texture.Apply();
        return texture;
    }
    public void SaveRenderTextureAsPNG(RenderTexture renderTexture, string fileName)
    {
        // RenderTexture�� Ȱ��ȭ�մϴ�.
        RenderTexture.active = renderTexture;

        // RenderTexture�� ������ ũ���� Texture2D�� �����մϴ�.
        Texture2D texture = new Texture2D(renderTexture.width, renderTexture.height, TextureFormat.RGBA32, false);

        // RenderTexture�� ������ Texture2D�� �����մϴ�.
        texture.ReadPixels(new Rect(0, 0, renderTexture.width, renderTexture.height), 0, 0);
        texture.Apply();

        // Texture2D�� PNG�� ���ڵ��մϴ�.
        byte[] bytes = texture.EncodeToPNG();

        // ��θ� �����մϴ�.
        string path = Path.Combine(Application.dataPath, fileName);

        // PNG ������ �ۼ��մϴ�.
        File.WriteAllBytes(path, bytes);

        // RenderTexture�� Ȱ�� ���¸� �����մϴ�.
        RenderTexture.active = null;

        Debug.Log($"RenderTexture saved to {path}");
    }
    public void Wash(Vector2 uv)
    {
        float snowSize = 0.1f;// = UnityEngine.Random.Range(0.5f, 2.0f);
        Paint(uv, snowSize);
    }
    //public void Wash(Vector3 contactPoint)
    //{
    //    float snowSize = UnityEngine.Random.Range(0.5f, 2.0f);
    //    Paint(contactPoint, snowSize);
    //}
    //private void Paint(in Vector3 contactPoint, float size = 1f)
    //{
    //    // ���� �ε��� 3D ��ǥ�κ��� 2D UV ��ǥ ���
    //    // Plane�� scale 1�� ��ǥ 10�̹Ƿ� 10���� ������
    //    Vector3 normalizedVec3 = (contactPoint - transform.position) / 2;
    //    normalizedVec3.x /= transform.lossyScale.x;
    //    normalizedVec3.z /= transform.lossyScale.z;

    //    Vector2 uv = new Vector2(normalizedVec3.x + 0.5f, normalizedVec3.z + 0.5f);

    //    // UV ���� �ٱ��̸� ����
    //    if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
    //        return;

    //    uv = Vector2.one - uv; // ��ǥ ����

    //    Debug.Log($"x:{uv.x}, y:{uv.y}");

    //    PaintBrush(BrushTexture, uv, size);
    //}
    private void Paint(Vector2 uv, float size = 1f)
    {
        // UV ���� �ٱ��̸� ����
        if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
            return;

        uv = Vector2.one - uv; // ��ǥ ����

        Debug.Log($"x:{uv.x}, y:{uv.y}");

        PaintBrush(BrushTexture, uv, size);
    }
    private void PaintBrush(Texture2D brush, Vector2 uv, float size)
    {
        RenderTexture.active = brushTex;         // �������� ���� Ȱ�� ���� �ؽ��� �ӽ� �Ҵ�
        GL.PushMatrix();                                  // ��Ʈ���� ���
        GL.LoadPixelMatrix(0, Resolution, Resolution, 0); // �˸��� ũ��� �ȼ� ��Ʈ���� ����

        float brushPixelSize = brushSize * Resolution;// * size;
        uv.x *= Resolution;
        uv.y *= Resolution;

        // ���� �ؽ��Ŀ� �귯�� �ؽ��ĸ� �̿��� �׸���
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSize * 0.5f,
                //(maskTex.height - uv.y) - brushPixelSize * 0.5f,
                (brushTex.height - uv.y) - brushPixelSize * 0.5f,
                brushPixelSize,
                brushPixelSize
            ),
            brush
        );

        GL.PopMatrix();              // ��Ʈ���� ����
        RenderTexture.active = null; // Ȱ�� ���� �ؽ��� ����
        SaveRenderTextureAsPNG(brushTex, "SavedTexture.png");
    }
}
