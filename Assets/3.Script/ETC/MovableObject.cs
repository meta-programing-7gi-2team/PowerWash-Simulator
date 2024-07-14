using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObject : MonoBehaviour
{
    [SerializeField]
    private Material material;
    private bool isArrange;

    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.layer.Equals(LayerMask.NameToLayer("Ground")) ||
            col.gameObject.layer.Equals(LayerMask.NameToLayer("Player"))) 
            return;
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
