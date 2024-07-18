using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FreeTest : MonoBehaviour
{
    [SerializeField]
    private float mouseSensitivity = 100.0f;
    [SerializeField]
    private Transform playerBody;
    [SerializeField]
    private Transform pivot;
    private float xRotation = 0.0f;
    private float offsetX = 20f;
    private float offsetY = 100f;
    public bool isFreeMode { get; private set; }
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
        if (!isFreeMode)
        {
            float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
            float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -80.0f, 80.0f);

            transform.localRotation = Quaternion.Euler(xRotation, 0.0f, 0.0f);
            playerBody.Rotate(Vector3.up * mouseX);
            pivot.localRotation = Quaternion.Euler(Vector3.zero);
        }
        else
        {
            Vector3 mousePosition = Input.mousePosition;

            if (mousePosition.x <= 0 + offsetX ||
               mousePosition.x >= Screen.width - offsetX ||
               mousePosition.y <= 0 + offsetY ||
               mousePosition.y >= Screen.height - offsetY)
            {
                float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
                float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

                xRotation -= mouseY;
                xRotation = Mathf.Clamp(xRotation, -80.0f, 80.0f);

                transform.localRotation = Quaternion.Euler(xRotation, 0.0f, 0.0f);
                playerBody.Rotate(Vector3.up * mouseX);
            }
            pivot.LookAt(Input.mousePosition);
        }
    }
    private void ModeChange()
    {
        isFreeMode = !isFreeMode;
        Cursor.lockState = isFreeMode ? CursorLockMode.Confined : CursorLockMode.Locked;
        Cursor.visible = false;
    }
}