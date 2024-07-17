using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Crosshair : MonoBehaviour
{
    private RectTransform rect;
    private FirstPersonCamera fpc;
    private Image image;

    private Vector3 center;
    private Color color;

    [SerializeField]
    private float fadeSpeed;
    private bool isFadeIn;
    
    private void Start()
    {
        rect = GetComponent<RectTransform>();
        fpc = FindObjectOfType<FirstPersonCamera>();
        image = GetComponent<Image>();
        color = GetComponent<Image>().color;
        center = new Vector3(Screen.width / 2, Screen.height / 2, 0);
    }

    private void Update()
    {
        if (fpc.isFreeMode)
        {
            Vector3 mousePosition = Input.mousePosition;
            rect.position = mousePosition;
        }
        else
        {
            rect.position = center;
        }

        if (isFadeIn)
        {
            FadeIn();
        }
        else
        {
            FadeOut();
        }
    }
    private void FadeIn()
    {
        if (color.a < 1f)
        {
            color.a += fadeSpeed * Time.deltaTime;
            color.a = Mathf.Clamp(color.a, 0f, 1f);
            image.color = color;
        }
    }
    private void FadeOut()
    {
        if (color.a > 0f)
        {
            color.a -= fadeSpeed * Time.deltaTime;
            color.a = Mathf.Clamp(color.a, 0f, 1f);
            image.color = color;
        }
    }
    public void SetIsFade(bool b)
    {
        isFadeIn = b;
    }
}
