using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunControl : MonoBehaviour
{
    [SerializeField] private Transform firePoint;
    [SerializeField] private float shotRange = 4f;
    [SerializeField] private LineRenderer stream;

    private bool isAuto = false;
    private RaycastHit hit;

    private void Update()
    {
        if (Input.GetMouseButtonDown(1) || 
            (isAuto && Input.GetMouseButtonDown(0)))
        {
            ToggleAuto();
        }

        if (Input.GetMouseButton(0) || isAuto)
        {
            ShotWater();
        }
        if (Input.GetMouseButtonUp(0))
        {
            StopWater();
        }
    }
    
    private void ShotWater()
    {
        stream.enabled = true;
        stream.SetPosition(0, firePoint.position);

        if (Physics.Raycast(firePoint.position, firePoint.forward, out hit, shotRange))
        {
            Debug.DrawRay(firePoint.position, firePoint.forward * shotRange, Color.red);
            stream.SetPosition(1, hit.point);
        }
        else
        {
            Debug.DrawRay(firePoint.position, firePoint.forward * shotRange, Color.green);
            stream.SetPosition(1, firePoint.position + firePoint.forward * shotRange);
        }
    }
    private void StopWater()
    {
        stream.enabled = false;
    }
    private void ToggleAuto()
    {
        isAuto = !isAuto;
        stream.enabled = isAuto ? true : false;
    }
}
