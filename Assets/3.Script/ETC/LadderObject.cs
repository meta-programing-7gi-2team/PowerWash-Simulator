using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderObject : MonoBehaviour
{
    [SerializeField]
    private Material material;
    private Transform parent;
    private Transform playerCamera;
    private bool isHanded = false;
    public bool isArrange { get; private set; }

    private void Start()
    {
        playerCamera = Camera.main.transform;
        parent = transform.parent;
    }
    
   
   
    public void PickUped()
    {
        isHanded = true;
        transform.parent = playerCamera;
        gameObject.layer = LayerMask.NameToLayer("Hand");
    }
    public void Droped()
    {
        isHanded = false;
        transform.parent = parent;
        gameObject.layer = LayerMask.NameToLayer("Movable");
    }

}
