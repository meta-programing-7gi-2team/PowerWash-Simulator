using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderShape : MonoBehaviour
{
    [SerializeField] Material[] mat;
    [SerializeField] GameObject[] part; 

    public Vector3 pos { get; private set; }
    public Quaternion rot { get; private set; }
    public float valueY { get; private set; }

    private void Start()
    {
        pos = transform.position;
        rot = transform.rotation;
        valueY = transform.GetChild(1).transform.localPosition.y;
        
    }
    public void ChangeMaterial(int index)
    {
        foreach(var p in part)
        {
            p.GetComponent<MeshRenderer>().material = mat[index];
        }
    }
}
