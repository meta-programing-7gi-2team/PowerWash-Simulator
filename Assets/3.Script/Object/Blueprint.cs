using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Blueprint : MonoBehaviour
{
    [SerializeField]
    private Material[] mat;
    [SerializeField]
    private MeshRenderer[] part;

    public Vector3 pos { get; private set; }
    public Quaternion rot { get; private set; }
    public float valueY { get; private set; }
    public bool isBlock { get; private set; }
    private void Start()
    { 
        pos = transform.position + new Vector3(0,0,0.01f);
        rot = transform.rotation;
        valueY = transform.GetChild(1).localPosition.y;
    }
    private void OnTriggerStay(Collider other)
    {
        isBlock = true;
        part[0].material = mat[1];
        part[1].material = mat[1];
    }
    private void OnTriggerExit(Collider other)
    {
        isBlock = false;
        part[0].material = mat[0];
        part[1].material = mat[0];
    }
}
