using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonCamera : MonoBehaviour
{
    [SerializeField] private float mouseSensitivity = 100.0f;

    [SerializeField] private Transform playerBody;

    private float xRotation = 0.0f;
    private bool isFree = false;
    private float offsetX = 20f;
    private float offsetY = 100f;

    private void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            ModeChange();
        }
    }
    private void FixedUpdate()
    {
        CameraMove();
    }
    private void CameraMove()
    {
        if (!isFree)
        {
            float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
            float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -85.0f, 85.0f);

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
        isFree = !isFree;
        Cursor.lockState = isFree ? CursorLockMode.Confined : CursorLockMode.Locked;
    }
    public bool Get_IsFree()
    {
        return isFree;
    }
}
