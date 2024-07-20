using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Water : MonoBehaviour
{
    private Transform view; 
    private RaycastHit hit;
    private Vector3 firePoint;
    private WashGunControl washGun;
    private Quaternion rotation;
    [SerializeField]
    private LayerMask layer;
    [SerializeField]
    private float shotRange;
    private void Start()
    {
        view = Camera.main.transform;
        washGun = FindObjectOfType<WashGunControl>();
    }
    void Update()
    {
        firePoint = view.position + view.forward * washGun.offsetRange;

        if (Physics.Raycast(firePoint, view.forward, out hit, shotRange, layer))
        {
            transform.LookAt(hit.point);
            rotation = transform.localRotation;
            rotation.eulerAngles = new Vector3(rotation.eulerAngles.x, rotation.eulerAngles.y, 0f);
            transform.localRotation = rotation;
        }
        else
        {

            Vector3 targetPosition = firePoint + view.forward * shotRange;
            transform.LookAt(targetPosition);
            rotation = transform.localRotation;
            rotation.eulerAngles = new Vector3(rotation.eulerAngles.x, rotation.eulerAngles.y, 0f);
            transform.localRotation = rotation;
        }
    }
}
