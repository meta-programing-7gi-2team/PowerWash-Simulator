using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class F_Key_Indicator : MonoBehaviour
{
    private Transform playerCamera;
    private CanvasGroup cg;
    private RaycastHit hit;
    [SerializeField]
    private float fadeSpeed;
    [SerializeField]
    private Text text;
    [SerializeField]
    private LayerMask layer;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        cg = GetComponent<CanvasGroup>();
    }
    private void Update()
    {
        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity);
        if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Pack")))
        {
            if (hit.transform.CompareTag("Patrick"))
            {
                if (hit.transform.GetComponent<ActableObject>().DangerZone.isDanger)
                {
                    FadeOut();
                    return;
                }
                text.text = "뚱이의 집 열기/닫기";
            }
            else
            {
                text.text = "장비 들기/자리에 놓기";
            }
            FadeIn();
        }
        else
        {
            FadeOut();
        }
    }
    private void FadeIn()
    {
        if (cg.alpha < 1f)
        {
            cg.alpha += fadeSpeed * Time.deltaTime;
            cg.alpha = Mathf.Clamp(cg.alpha, 0f, 1f);
        }
    }
    private void FadeOut()
    {
        if (cg.alpha > 0f)
        {
            cg.alpha -= fadeSpeed * Time.deltaTime;
            cg.alpha = Mathf.Clamp(cg.alpha, 0f, 1f);
        }
    }

}
