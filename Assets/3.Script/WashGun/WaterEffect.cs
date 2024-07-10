using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterEffect : MonoBehaviour
{
    public float brushSize = 0.1f; // �귯�� ũ��
    //��ƼŬ
    private ParticleSystem ps; 
    private List<ParticleCollisionEvent> collisionEvents;

    public Color targetColor = Color.black; // Ÿ�� ����
    public float colorTolerance = 0.1f; // ���� ��� ����

    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();
    }
    private void OnParticleCollision(GameObject other)
    {
        // �浹�� ������Ʈ�� Renderer ��������
        Renderer renderer = other.GetComponent<Renderer>();
        if (renderer != null)
        {
            Material material = renderer.material;

            // ����ũ �ؽ�ó ��������
            if (material.HasProperty("_MaskTex"))
            {
                Texture2D maskTexture = material.GetTexture("_MaskTex") as Texture2D;
                if (maskTexture != null && maskTexture.isReadable)
                {
                    // �浹 ���� ���
                    int numCollisionEvents = ps.GetCollisionEvents(other, collisionEvents);

                    for (int i = 0; i < numCollisionEvents; i++)
                    {
                        Vector3 collisionPoint = collisionEvents[i].intersection;
                        Vector2 uv;
                        if (GetUVFromCollisionPoint(renderer, collisionPoint, out uv))
                        {
                            // UV ��ǥ�� �ؽ�ó ��ǥ�� ��ȯ
                            int x = (int)(uv.x * maskTexture.width);
                            int y = (int)(uv.y * maskTexture.height);
                            Debug.Log($"{x}, {y}");

                            // ��ȿ ���� ���� �ִ��� Ȯ��
                            if (x >= 0 && x < maskTexture.width && y >= 0 && y < maskTexture.height)
                            {
                                // �б� ������ �ؽ�ó�� ��ȯ
                                Texture2D readableTexture = GetReadableTexture(maskTexture);

                                // �ؽ�ó�� Ư�� �κ��� ���������� ����
                                ModifyTexture(readableTexture, x, y, brushSize);

                                // ������ �ؽ�ó�� ���� �ؽ�ó�� �ٽ� ����
                                ApplyModifiedTexture(readableTexture, maskTexture);

                                // �ؽ�ó���� ������ ���� ���
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
        // �浹 �������� ������ �̵��� �� �ڷ� ����ĳ��Ʈ �߻�
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
        // ���ο� �б� ���� �ؽ�ó ����
        RenderTexture renderTex = RenderTexture.GetTemporary(
            source.width,
            source.height,
            0,
            RenderTextureFormat.ARGB32, // ���� ����
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

        // ��ȿ ���� ������ �ȼ��� ����
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
        // ���� �ؽ�ó�� ������ �ؽ�ó�� �ٽ� ����
        // ������ �ؽ�ó�� ���� �ؽ�ó�� �ٲ㼭 ��Ƽ���� ����
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
