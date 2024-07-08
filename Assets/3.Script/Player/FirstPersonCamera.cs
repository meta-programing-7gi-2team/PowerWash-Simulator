using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonCamera : MonoBehaviour
{
    public float mouseSensitivity = 100.0f;
    public Transform playerBody;

    private float xRotation = 0.0f;

    private bool isFree = false;
    private float offsetX = 20f;
    private float offsetY = 100f;

    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
    }

    void Update()
    {
        CameraMove();

        if (Input.GetKeyDown(KeyCode.C))
        {
            ModeChange();
        }
    }
    private void CameraMove()
    {
        if (!isFree)
        {
            float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
            float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -90.0f, 90.0f);

            transform.localRotation = Quaternion.Euler(xRotation, 0.0f, 0.0f);
            playerBody.Rotate(Vector3.up * mouseX);
        }
        else
        {
            Vector3 mousePosition = Input.mousePosition;

            if(mousePosition.x <= 0 + offsetX ||
                mousePosition.x >= Screen.width - offsetX ||
                mousePosition.y <= 0 + offsetY ||
                mousePosition.y >= Screen.height - offsetY)
            {
                float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
                float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

                xRotation -= mouseY;
                xRotation = Mathf.Clamp(xRotation, -90.0f, 90.0f);

                transform.localRotation = Quaternion.Euler(xRotation, 0.0f, 0.0f);
                playerBody.Rotate(Vector3.up * mouseX);
            }
        }  
    }
    private void ModeChange()
    {
        if (isFree)
        {
            isFree = false;
            Cursor.lockState = CursorLockMode.Locked;
        }
        else
        {
            isFree = true;
            Cursor.lockState = CursorLockMode.Confined;
            Cursor.visible = false;
        }
    }
    public bool GetIsFree()
    {
        return isFree;
    }
}
