using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObject : MonoBehaviour
{
    private Material material;
    [SerializeField]
    private bool isArrange;

    private void Start()
    {
        material = GetComponent<MeshRenderer>().material;
    }

    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.layer.Equals(LayerMask.NameToLayer("Ground"))) return;
        material.color = Color.red;
        isArrange = false;
    }
    private void OnTriggerExit(Collider col)
    {
        material.color = Color.white;
        isArrange = true;
    }

    public bool GetIsArrange()
    {
        return isArrange;
    }
}
