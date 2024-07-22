using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderObject : MonoBehaviour
{
    [SerializeField]
    private MeshCollider[] part;
    private Transform parent;
    private Transform extension;
    private float extensionHeght;

    private Vector3 defaultPos;
    private Quaternion defaultRot;
    public bool isArranged { get; private set; }

    private void Start()
    {
        parent = transform.parent;
        extension = transform.GetChild(1);
        extensionHeght = 0f;
        defaultPos = transform.position;
        defaultRot = transform.rotation;
        isArranged = false;
    }
    
    public void PickUped()
    {
        isArranged = false;
        transform.parent = GameManager.view;
        transform.localPosition = new Vector3(0, -0.5f, 1f);
        transform.localRotation = Quaternion.Euler(0f, 90f, 20f);
        extension.localPosition = Vector3.zero;
        part[0].enabled = false;
        part[1].enabled = false;
    }
    public void Droped()
    {
        isArranged = false;
        transform.parent = parent;
        transform.position = defaultPos;
        transform.rotation = defaultRot;
        extension.localPosition = new Vector3(0, extensionHeght, 0);
        part[0].enabled = true;
        part[1].enabled = true;
    }
    public void Arranged(Vector3 pos, Quaternion rot, float valueY)
    {
        isArranged = true;
        transform.parent = parent;
        transform.position = pos;
        transform.rotation = rot;
        extension.localPosition = new Vector3(0, valueY, 0);
    }
    public void Placed()
    {
        isArranged = false;
        transform.parent = parent;
        defaultPos = transform.position;
        defaultRot = transform.rotation;
        extensionHeght = extension.localPosition.y;
        part[0].enabled = true;
        part[1].enabled = true;
    }
}
