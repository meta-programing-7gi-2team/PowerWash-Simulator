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

    private static readonly string PaintTexPropertyName = "_MaskTex"; // 쉐이더에서 가져올 texture의 이름

    private MeshRenderer _mr;

    public int resolution = 2048;

    [SerializeField] private RenderTexture renderTexture; // 브러시로 그려질 대상 렌더 텍스쳐
    [SerializeField] private Texture2D maskTexture; // 브러시로 그려질 대상 렌더 텍스쳐

    [SerializeField, Range(0.01f, 1f)] private float brushSize = 0.2f; // 브러쉬 크기 기준
    [SerializeField, Range(0.01f, 1f)] private float waterBrushIntensity = 0.1f;
    [SerializeField, Range(0.01f, 1f)] private float eraserBrushIntensity = 0.1f;

    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser

    private MeshCollider prevCollider;
    //private Texture2D CopiedBrushTexture; // 실시간으로 색상 칠하는데 사용되는 브러시 텍스쳐 카피본
    private Vector2 sameUvPoint; // 직전 프레임에 마우스가 위치한 대상 UV 지점 (동일 위치에 중첩해서 그리는 현상 방지)
    private void OnEnable()
    {
        Init();
        InitRenderTexture();
        InitBrushTexture();
    }

    private void Init()
    {
        // MeshRenderer 가져오기
        TryGetComponent(out _mr);
    }
    //렌더 텍스처 초기화
    private void InitRenderTexture()
    {
        //renderTexture = new RenderTexture(resolution, resolution, 32);
        Graphics.Blit(maskTexture, renderTexture);

        // 마테리얼 프로퍼티 블록 이용하여 배칭 유지하고
        // 마테리얼의 프로퍼티에 렌더 텍스쳐 넣어주기
        TextureBlock.SetTexture(PaintTexPropertyName, renderTexture);
        _mr.SetPropertyBlock(TextureBlock);
    }
    //브러쉬 텍스처 초기화
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
                // 대상 참조 갱신
                if (prevCollider == null || prevCollider != currentCollider)
                {
                    prevCollider = currentCollider;
                    currentCollider.TryGetComponent(out prevCollider);
                }

                // 동일한 지점에는 중첩하여 다시 그리지 않음
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
        //// 눈이 부딪힌 3D 좌표로부터 2D UV 좌표 계산
        //// Plane은 scale 1당 좌표 10이므로 10으로 나누기
        //Vector3 normalizedVec3 = (contactPoint - transform.position) / 10f;
        //normalizedVec3.x /= transform.lossyScale.x;
        //normalizedVec3.z /= transform.lossyScale.z;

        //Vector2 uv = new Vector2(normalizedVec3.x + 0.5f, normalizedVec3.z + 0.5f);

        //// UV 범위 바깥이면 배제
        //if (uv.x < 0f || uv.y < 0f || uv.x > 1f || uv.y > 1f)
        //    return;

        //uv = Vector2.one - uv; // 좌표 반전

        //// 1. 쌓기
        //if (pileOrClear)
        //{
        //    PaintBrush(whiteBrushTexture, uv, size);
        //}
        //// 2. 지우기
        //else
        //{
        //    PaintBrush(blackBrushTexture, uv, size);
        //}
    }
    private void PaintBrush(Texture2D brush, Vector2 uv, float size)
    {
        RenderTexture.active = renderTexture;         // 페인팅을 위해 활성 렌더 텍스쳐 임시 할당
        GL.PushMatrix();                                  // 매트릭스 백업
        GL.LoadPixelMatrix(0, resolution, resolution, 0); // 알맞은 크기로 픽셀 매트릭스 설정

        float brushPixelSize = brushSize * resolution * size;
        uv.x *= resolution;
        uv.y *= resolution;

        // 렌더 텍스쳐에 브러시 텍스쳐를 이용해 그리기
        Graphics.DrawTexture(
            new Rect(
                uv.x - brushPixelSize * 0.5f,
                (renderTexture.height - uv.y) - brushPixelSize * 0.5f,
                brushPixelSize,
                brushPixelSize
            ),
            brush
        );

        GL.PopMatrix();              // 매트릭스 복구
        RenderTexture.active = null; // 활성 렌더 텍스쳐 해제
    }
}
