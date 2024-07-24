using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BrushController : MonoBehaviour
{
    [SerializeField, Range(0.01f, 1f)] private float brushSizeX = 0.2f; // 브러쉬 크기 기준
    [SerializeField, Range(0.01f, 1f)] private float brushSizeY = 0.2f; // 브러쉬 크기 기준
    [SerializeField, Range(0.01f, 1f)] private float waterBrushIntensity = 0.1f;
    [SerializeField, Range(0.01f, 1f)] private float eraserBrushIntensity = 0.1f;
    [SerializeField] private ComputeShader colorRatioComputeShader;
    [SerializeField] private ComputeShader fadeTextureComputeShader;

    public Texture2D WaterBrushTexture { get; private set; } // Painter
    public Texture2D EraserBrushTexture { get; private set; } // Eraser
    public float ColorNum { get; private set; }
    public float BrushSizeX
    {
        get
        {
            return brushSizeX;
        }
    }
    public float BrushSizeY
    {
        get
        {
            return brushSizeY;
        }
    }
    public ComputeShader ColorRatioComputeShader
    {
        get
        {
            return colorRatioComputeShader;
        }
    }
    public ComputeShader FadeTextureComputeShader
    {
        get
        {
            return fadeTextureComputeShader;
        }
    }

    public int resolution = 128;
    private void Awake()
    {
        ColorNum = 0.3f;
        InitBrushTexture();
    }
    //브러쉬 텍스처 초기화
    private void InitBrushTexture()
    {
        Color waterColor = new Color(ColorNum, ColorNum, ColorNum, ColorNum);
        WaterBrushTexture = CreateBrushTexture(waterColor, waterBrushIntensity);
        EraserBrushTexture = CreateBrushTexture(Color.black, eraserBrushIntensity);
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
