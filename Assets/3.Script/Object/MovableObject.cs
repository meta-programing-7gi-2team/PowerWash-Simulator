using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObject : MonoBehaviour
{
    [SerializeField]
    private Material material;
    private bool isHanded = false;
    private Transform parent;
    private Transform playerCamera;
    private float yRotation = 0f;
    public bool isArrange { get; private set; }

    private void Start()
    {
        playerCamera = Camera.main.transform;
        parent = transform.parent;
    }
    private void Update()
    {
        if (isHanded)
        {
            float scroll = Input.GetAxis("Mouse ScrollWheel");
            if (scroll > 0)
            {
                yRotation += 30f;
            }
            else if (scroll < 0)
            {
                yRotation -= 30f;
            }
        }
      
    }
    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.layer.Equals(LayerMask.NameToLayer("Ground")) || !isHanded) 
            return;

        material.color = Color.red;
        isArrange = false;
    }
    private void OnTriggerExit(Collider col)
    {
        material.color = Color.white;
        isArrange = true;
    }
    public void PickUped()
    {
        isHanded = true;
        transform.parent = playerCamera;
        gameObject.layer = LayerMask.NameToLayer("Movable");
    }
    public void Droped()
    {
        isHanded = false;
        transform.parent = parent;
        gameObject.layer = LayerMask.NameToLayer("Pack");
    }
    public void Move(Vector3 pos)
    {
        transform.position = pos;
        transform.rotation = Quaternion.Euler(0, yRotation, 0);
    }
}
