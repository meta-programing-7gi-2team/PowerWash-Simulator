using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BrushController : MonoBehaviour
{
    [SerializeField, Range(0.01f, 1f)] private float brushSize = 0.2f; // �귯�� ũ�� ����
    [SerializeField, Range(0.01f, 1f)] private float waterBrushIntensity = 0.1f;
    [SerializeField, Range(0.01f, 1f)] private float eraserBrushIntensity = 0.1f;

    private Texture2D whiteBrushTexture; // Painter
    private Texture2D blackBrushTexture; // Eraser

    public Texture2D WhiteBrushTexture
    {
        get
        {
            return whiteBrushTexture;
        }
    }
    public Texture2D BlackBrushTexture
    {
        get
        {
            return blackBrushTexture;
        }
    }
    public float BrushSize
    {
        get
        {
            return brushSize;
        }
    }

    public int resolution = 128;
    private void Awake()
    {
        InitBrushTexture();
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            Debug.Log("�� ���̴� ¯����");
        }
    }
    //�귯�� �ؽ�ó �ʱ�ȭ
    private void InitBrushTexture()
    {
        Color clearColor = new Color(0.5f, 0.5f, 0.5f, 1);
        whiteBrushTexture = CreateBrushTexture(clearColor, waterBrushIntensity);
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
}
