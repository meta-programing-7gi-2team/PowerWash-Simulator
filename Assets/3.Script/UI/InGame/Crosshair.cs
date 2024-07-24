using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Crosshair : MonoBehaviour
{
    private Image image;
    private WashGunControl washGun;

    private Color color;

    [SerializeField]
    private float fadeSpeed;

    private void Start()
    {
        image = GetComponent<Image>();
        color = GetComponent<Image>().color;
        washGun = FindObjectOfType<WashGunControl>();
    }

    private void Update()
    {
        if (washGun.isFire)
        {
            FadeOut();
        }
        else
        {
            FadeIn();
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
}
