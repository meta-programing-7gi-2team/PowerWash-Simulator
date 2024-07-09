using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunControl : MonoBehaviour
{
    [SerializeField] private Transform gunPivot;

    private void Update()
    {
        Debug.DrawRay(transform.position, transform.forward * 10f, Color.red);

    }
    
    private void ShotWater()
    {

    }
}
