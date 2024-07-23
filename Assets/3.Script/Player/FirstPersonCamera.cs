using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonCamera : MonoBehaviour, IObserver
{
    [SerializeField] 
    private Transform playerBody;
    [SerializeField] 
    private PlayerState playerState;
    private State state;
    private float sensitivity = 100.0f;
    private float xRotation = 0.0f;
    private float offsetX = 20f;
    private float offsetY = 100f;
    public bool isFreeMode { get; private set; }
    private void OnEnable()
    {
        playerState.Register(this);
    }
    private void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if (state.Equals(State.Run) ||
            state.Equals(State.Hand))
        {
            isFreeMode = false;
            Cursor.lockState = CursorLockMode.Locked;
            return;
        }

        if (Input.GetKeyDown(KeyCode.C))
        {
            ModeChange();
        }
    }
    private void FixedUpdate()
    {
        if (UIManager.instance.isCursor) return;

        CameraMove();
    }
    private void CameraMove()
    {
        if (!isFreeMode)
        {
            float mouseX = Input.GetAxis("Mouse X") * sensitivity * Time.deltaTime;
            float mouseY = Input.GetAxis("Mouse Y") * sensitivity * Time.deltaTime;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -80.0f, 90.0f);

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
                float mouseX = Input.GetAxis("Mouse X") * sensitivity * Time.deltaTime;
                float mouseY = Input.GetAxis("Mouse Y") * sensitivity * Time.deltaTime;

                xRotation -= mouseY;
                xRotation = Mathf.Clamp(xRotation, -80.0f, 80.0f);

                transform.localRotation = Quaternion.Euler(xRotation, 0.0f, 0.0f);
                playerBody.Rotate(Vector3.up * mouseX);
            }
        }  
    }
    private void ModeChange()
    {
        isFreeMode = !isFreeMode;
        Cursor.lockState = isFreeMode ? CursorLockMode.Confined : CursorLockMode.Locked;
        Cursor.visible = false;
    }
    public void UpdateState(State state)
    {
        this.state = state;
    }
}
