using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunControl : MonoBehaviour
{
    [SerializeField] private Transform firePoint;
    [SerializeField] private Transform cameraTransform;

    [SerializeField] private GameObject waterEfx;
    [SerializeField] private LineRenderer stream;

    [SerializeField] private float shotRange = 4f;
    [SerializeField] private LayerMask objectLayer;

    private bool isAuto = false;
    private RaycastHit hit;

    private Vector3 blockRotation = new Vector3(15f, -45f, 20f);
    private Vector3 dir;

    private void Update()
    {
        if (!BlockCheck())
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
    }
    private void ShotWater()
    { 
        stream.enabled = true;
        stream.SetPosition(0, firePoint.position);

        if(Physics.Raycast(cameraTransform.position, cameraTransform.forward, out hit, shotRange, objectLayer))
        {
            dir = hit.point;
            stream.SetPosition(1, dir);   
        }
        else
        {
            dir = cameraTransform.position + cameraTransform.forward * shotRange;
            stream.SetPosition(1, dir);
        }

        waterEfx.transform.LookAt(dir);
        waterEfx.SetActive(true);
    }
    private void StopWater()
    {
        stream.enabled = false;
        waterEfx.SetActive(false);
    }
    private void ToggleAuto()
    {
        isAuto = !isAuto;
        if (!isAuto) StopWater();
    }
    private bool BlockCheck()
    {
        if(Physics.Raycast(transform.position, cameraTransform.forward,out RaycastHit hit, 1f, objectLayer))
        {
            transform.localRotation = Quaternion.Euler(blockRotation);
            StopWater();
            return true;
        }
        else
        {
            transform.localRotation = Quaternion.Euler(Vector3.zero);
            return false;
        }
    }
}
