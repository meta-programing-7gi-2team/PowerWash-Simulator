using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private RaycastHit hit;
    [SerializeField]
    private LayerMask layer;
    [SerializeField]
    private float shotRange;
    [SerializeField]
    [Range(-20,20)]private int offsetY;

    private WashGunControl washGun;
    private CleanDraw cleanDraw;
    private void Start()
    {
        transform.localRotation = Quaternion.Euler(new Vector3(0, offsetY, 0));
        washGun = FindObjectOfType<WashGunControl>();
    }
    private void Update()
    {
        if (Physics.Raycast(washGun.firePoint, transform.forward, out hit, shotRange, layer))
        {
            hit.transform.TryGetComponent<CleanDraw>(out cleanDraw);
            if(cleanDraw)
            {
                cleanDraw.Wash(hit);
            }
            Debug.DrawRay(washGun.firePoint, transform.forward * shotRange, Color.green);
        }
        else
        {
            Debug.DrawRay(washGun.firePoint, transform.forward * shotRange, Color.red);
        }
    }
}
