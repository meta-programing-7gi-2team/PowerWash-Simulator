using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour
{
    private Transform firePoint;
    private GameObject waterParticle;
    private Transform playerCamera;
    private NozzleReplacement nozzle;
    private LineRenderer stream;

    [SerializeField] private float shotRange = 4f;
    [SerializeField] private float blockCheckRange;
    [SerializeField] private LayerMask objectLayer;

    private bool isAuto = false;
    private RaycastHit hit;
    private Vector3 dir;
    private Vector3 blockRotation;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        nozzle = GetComponent<NozzleReplacement>();
        stream = GetComponent<LineRenderer>();
        blockRotation = new Vector3(15f, -45f, 20f);

        SetCurrentNozzle();
        SetBlockCheckRange(1.1f);
    }
    private void SetCurrentNozzle()
    {
        firePoint = nozzle.GetCurrentActiveNozzle();
        waterParticle = nozzle.GetCurrentActiveWaterParticle();
    }
    private void Update()
    {
        SetCurrentNozzle();

        if (!BlockCheck())
        {
            if (Input.GetMouseButtonDown(1) ||
            (isAuto && Input.GetMouseButtonDown(0)))
            {
                Toggle();
            }
            if (Input.GetMouseButton(0) || isAuto)
            {
                Shot();
            }
            else if (Input.GetMouseButtonUp(0) || !isAuto)
            {
                Stop();
            }
        }
    }
    private void Shot()
    { 
        stream.enabled = true;
        stream.SetPosition(0, firePoint.position);

        if(Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, objectLayer))
        {
            dir = hit.point;
        }
        else
        {
            dir = playerCamera.position + playerCamera.forward * shotRange;
        }
        stream.SetPosition(1, dir);

        waterParticle.transform.LookAt(dir);
        waterParticle.SetActive(true);
    }
    private void Stop()
    {
        stream.enabled = false;
        waterParticle.SetActive(false);
    }
    private void Toggle()
    {
        isAuto = !isAuto;
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockCheckRange))
        {
            Debug.DrawRay(playerCamera.position, playerCamera.forward * blockCheckRange, Color.red);
            Stop();
            transform.localRotation = Quaternion.Euler(blockRotation);
            return true;
        }
        else
        {
            Debug.DrawRay(playerCamera.position, playerCamera.forward * blockCheckRange, Color.blue);
            transform.localRotation = Quaternion.Euler(Vector3.zero);
            return false;
        }
    }
    public void SetBlockCheckRange(float range)
    {
        blockCheckRange = range;
    }
}
