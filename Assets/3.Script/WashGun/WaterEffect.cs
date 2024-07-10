using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterEffect : MonoBehaviour
{
    public float brushSize = 0.1f; // 브러쉬 크기
    //파티클
    private ParticleSystem ps; 
    private List<ParticleCollisionEvent> collisionEvents;

    public Color targetColor = Color.black; // 타겟 색상
    public float colorTolerance = 0.1f; // 색상 허용 오차

    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();
    }
    private void OnParticleCollision(GameObject other)
    {
        // 충돌한 오브젝트의 Renderer 가져오기
        Renderer renderer = other.GetComponent<Renderer>();
        if (renderer != null)
        {
            Material material = renderer.material;

            // 마스크 텍스처 가져오기
            if (material.HasProperty("_MaskTex"))
            {
                Texture2D maskTexture = material.GetTexture("_MaskTex") as Texture2D;
                if (maskTexture != null && maskTexture.isReadable)
                {
                    // 충돌 지점 계산
                    int numCollisionEvents = ps.GetCollisionEvents(other, collisionEvents);

                    for (int i = 0; i < numCollisionEvents; i++)
                    {
                        Vector3 collisionPoint = collisionEvents[i].intersection;
                        Vector2 uv;
                        if (GetUVFromCollisionPoint(renderer, collisionPoint, out uv))
                        {
                            // UV 좌표를 텍스처 좌표로 변환
                            int x = (int)(uv.x * maskTexture.width);
                            int y = (int)(uv.y * maskTexture.height);
                            Debug.Log($"{x}, {y}");

                            // 유효 범위 내에 있는지 확인
                            if (x >= 0 && x < maskTexture.width && y >= 0 && y < maskTexture.height)
                            {
                                // 읽기 가능한 텍스처로 변환
                                Texture2D readableTexture = GetReadableTexture(maskTexture);

                                // 텍스처의 특정 부분을 검은색으로 변경
                                ModifyTexture(readableTexture, x, y, brushSize);

                                // 수정된 텍스처를 원래 텍스처에 다시 적용
                                ApplyModifiedTexture(readableTexture, maskTexture);

                                // 텍스처에서 검은색 비율 계산
                                float blackPixelRatio = CalculateColorRatio(readableTexture, targetColor, colorTolerance);
                                Debug.Log("Black pixel ratio: " + blackPixelRatio * 100 + "%");

                            }
                        }
                    }
                }
            }
        }
    }
    private bool GetUVFromCollisionPoint(Renderer renderer, Vector3 collisionPoint, out Vector2 uv)
    {
        RaycastHit hit;
        // 충돌 지점에서 앞으로 이동한 후 뒤로 레이캐스트 발사
        if (Physics.Raycast(collisionPoint + Vector3.forward * 0.1f, Vector3.back, out hit))
        {
            Collider a = renderer.GetComponent<Collider>();
            if (hit.collider == renderer.GetComponent<Collider>())
            {
                uv = hit.textureCoord;
                return true;
            }
        }
        uv = Vector2.zero;
        return false;
    }
    private Texture2D GetReadableTexture(Texture2D source)
    {
        // 새로운 읽기 가능 텍스처 생성
        RenderTexture renderTex = RenderTexture.GetTemporary(
            source.width,
            source.height,
            0,
            RenderTextureFormat.ARGB32, // 변경 가능
            RenderTextureReadWrite.Linear);

        Graphics.Blit(source, renderTex);
        RenderTexture previous = RenderTexture.active;
        RenderTexture.active = renderTex;

        Texture2D readableTexture = new Texture2D(source.width, source.height, TextureFormat.ARGB32, false);
        readableTexture.ReadPixels(new Rect(0, 0, renderTex.width, renderTex.height), 0, 0);
        readableTexture.Apply();

        RenderTexture.active = previous;
        RenderTexture.ReleaseTemporary(renderTex);

        return readableTexture;
    }

    private void ModifyTexture(Texture2D texture, int x, int y, float brushSize)
    {
        int size = (int)brushSize;
        int halfSize = size / 2;

        // 유효 범위 내에서 픽셀을 수정
        int startX = Mathf.Clamp(x - halfSize, 0, texture.width);
        int startY = Mathf.Clamp(y - halfSize, 0, texture.height);
        int endX = Mathf.Clamp(x + halfSize, 0, texture.width);
        int endY = Mathf.Clamp(y + halfSize, 0, texture.height);

        Color[] pixels = texture.GetPixels(startX, startY, endX - startX, endY - startY);

        for (int i = 0; i < pixels.Length; i++)
        {
            pixels[i] = targetColor;
        }

        texture.SetPixels(startX, startY, endX - startX, endY - startY, pixels);
        texture.Apply();
    }

    private void ApplyModifiedTexture(Texture2D modifiedTexture, Texture2D originalTexture)
    {
        // 원래 텍스처에 수정된 텍스처를 다시 적용
        // 수정된 텍스처를 원래 텍스처로 바꿔서 머티리얼에 설정
        originalTexture.LoadRawTextureData(modifiedTexture.GetRawTextureData());
        originalTexture.Apply();
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
               Mathf.Abs(a.b - b.b) < tolerance;
    }
}
