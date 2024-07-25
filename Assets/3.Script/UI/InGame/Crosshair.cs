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
    [SerializeField]
    private Sprite[] sprite;

    private void Start()
    {
        image = GetComponent<Image>();
        color = GetComponent<Image>().color;
        washGun = FindObjectOfType<WashGunControl>();
    }

    private void Update()
    {
        if (Input.GetMouseButton(0) || washGun.isAuto)
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
    public void ChangeImage(int index)
    {
        image.sprite = sprite[index];
        image.SetNativeSize();
    }
}
