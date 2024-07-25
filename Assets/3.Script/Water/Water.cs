using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Water : MonoBehaviour
{
    private RaycastHit hit;
    private Quaternion rotation;
    [SerializeField]
    private LayerMask layer;
    [SerializeField]
    private float shotRange;

    private WashGunControl washGun;
    private Transform playerCamera;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        washGun = FindObjectOfType<WashGunControl>();
    }
    void Update()
    {
        if (Physics.Raycast(washGun.firePoint, playerCamera.forward, out hit, shotRange, layer))
        {
            transform.LookAt(hit.point);
            rotation = transform.localRotation;
            rotation.eulerAngles = new Vector3(rotation.eulerAngles.x, rotation.eulerAngles.y, 0f);
            transform.localRotation = rotation;
        }
        else
        {
            Vector3 targetPosition = washGun.firePoint + playerCamera.forward * shotRange;
            transform.LookAt(targetPosition);
            rotation = transform.localRotation;
            rotation.eulerAngles = new Vector3(rotation.eulerAngles.x, rotation.eulerAngles.y, 0f);
            transform.localRotation = rotation;
        }
    }
}
