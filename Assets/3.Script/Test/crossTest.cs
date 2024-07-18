using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class crossTest : MonoBehaviour
{
    private RectTransform rect;
    private FreeTest fpc;
    private Vector3 center;

    private void Start()
    {
        rect = GetComponent<RectTransform>();
        fpc = FindObjectOfType<FreeTest>();
     
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
    }
   
}
