using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private Transform view;
    private RaycastHit hit;
    [SerializeField]
    private LayerMask layer;
    [SerializeField]
    private float shotRange;
    [SerializeField]
    private float offsetY;

    private Vector3 firePoint;
    private WashGunControl washGun;
    private CleanDraw cleanDraw;
    private void Start()
    {
        transform.localRotation = Quaternion.Euler(new Vector3(0, offsetY, 0));
        washGun = FindObjectOfType<WashGunControl>();
        view = Camera.main.transform;
    }
    private void Update()
    {
        firePoint = view.position + view.forward * washGun.Range;

        if (Physics.Raycast(firePoint, transform.forward, out hit, shotRange, layer))
        {
            hit.transform.TryGetComponent<CleanDraw>(out cleanDraw);
            if(cleanDraw)
            {
                cleanDraw.Wash(hit);
            }
            Debug.DrawRay(firePoint, transform.forward * shotRange, Color.green);
        }
        else
        {
            Debug.DrawRay(firePoint, transform.forward * shotRange, Color.red);
        }
    }
}
