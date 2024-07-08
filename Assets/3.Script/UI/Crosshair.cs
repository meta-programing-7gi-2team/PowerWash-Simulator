using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Crosshair : MonoBehaviour
{
    private RectTransform rect;
    private FirstPersonCamera camera;
    private Vector3 center;

    void Start()
    {
        rect = GetComponent<RectTransform>();
      
        center = new Vector3(Screen.width / 2, Screen.height / 2, 0);
    }

    void Update()
    {
        if (camera.GetIsFree())
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
