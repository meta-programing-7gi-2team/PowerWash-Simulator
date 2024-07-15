using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class CleanDraw : MonoBehaviour
{
    [SerializeField] private Material targetMaterial; // 렌더 텍스쳐를 메인 텍스쳐로 적용할 대상 마테리얼
    private RenderTexture brushTex; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private Texture2D maskTex;
    [SerializeField, Range(0.01f, 1f)] private float brushIntensity = 0.1f;
    private float brushSize = 0.1f; // 브러쉬 크기
    public Color targetColor = Color.white; // 타겟 색상
    public float colorTolerance = 0.1f; // 색상 허용 오차

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
        // RenderTexture를 활성화합니다.
        RenderTexture.active = renderTexture;

        // RenderTexture와 동일한 크기의 Texture2D를 생성합니다.
        Texture2D texture = new Texture2D(renderTexture.width, renderTexture.height, TextureFormat.RGBA32, false);

        // RenderTexture의 내용을 Texture2D로 복사합니다.
        texture.ReadPixels(new Rect(0, 0, renderTexture.width, renderTexture.height), 0, 0);
        texture.Apply();

        // Texture2D를 PNG로 인코딩합니다.
        byte[] bytes = texture.EncodeToPNG();

        // 경로를 생성합니다.
        string path = Path.Combine(Application.dataPath, fileName);

        // PNG 파일을 작성합니다.
        File.WriteAllBytes(path, bytes);

        // RenderTexture의 활성 상태를 해제합니다.
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
    //    // 눈이 부딪힌 3D 좌표로부터 2D UV 좌표 계산
    //    // Plane은 scale 1당 좌표 10이므로 10으로 나누기
    //    Vector3 normalizedVec3 = (contactPoint - transform.position) / 2;
    //    normalizedVec3.x /= transform.lossyScale.x;
    //    normalizedVec3.z /= transform.lossyScale.z;

    //    Vector2 uv = new Vector2(normalizedVec3.x + 0.5f, normalizedVec3.z + 0.5f);

    //    // UV 범위 바깥이면 배제
    //    if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
    //        return;

    //    uv = Vector2.one - uv; // 좌표 반전

    //    Debug.Log($"x:{uv.x}, y:{uv.y}");

    //    PaintBrush(BrushTexture, uv, size);
    //}
    private void Paint(Vector2 uv, float size = 1f)
    {
        // UV 범위 바깥이면 배제
        if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
            return;

        uv = Vector2.one - uv; // 좌표 반전

        Debug.Log($"x:{uv.x}, y:{uv.y}");

        PaintBrush(BrushTexture, uv, size);
    }
    private void PaintBrush(Texture2D brush, Vector2 uv, float size)
    {
        RenderTexture.active = brushTex;         // 페인팅을 위해 활성 렌더 텍스쳐 임시 할당
        GL.PushMatrix();                                  // 매트릭스 백업
        GL.LoadPixelMatrix(0, Resolution, Resolution, 0); // 알맞은 크기로 픽셀 매트릭스 설정

        float brushPixelSize = brushSize * Resolution;// * size;
        uv.x *= Resolution;
        uv.y *= Resolution;

        // 렌더 텍스쳐에 브러시 텍스쳐를 이용해 그리기
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

        GL.PopMatrix();              // 매트릭스 복구
        RenderTexture.active = null; // 활성 렌더 텍스쳐 해제
        SaveRenderTextureAsPNG(brushTex, "SavedTexture.png");
    }
}
