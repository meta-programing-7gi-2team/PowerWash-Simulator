using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DangerZone : MonoBehaviour
{
    public bool isDanger { get; private set; }
    private void Start()
    {
        isDanger = false;
    }
    private void OnTriggerStay(Collider col)
    {
        if(col.transform.CompareTag("Player"))
        {
            isDanger = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        isDanger = false;
    }

}
