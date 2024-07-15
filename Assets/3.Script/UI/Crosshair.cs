using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Crosshair : MonoBehaviour
{
    private RectTransform rect;
    private FirstPersonCamera fpc;
    private Vector3 center;

    private void Start()
    {
        rect = GetComponent<RectTransform>();
        fpc = FindObjectOfType<FirstPersonCamera>();
        center = new Vector3(Screen.width / 2, Screen.height / 2, 0);
    }

    private void Update()
    {
        if (fpc.Get_IsFree())
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
