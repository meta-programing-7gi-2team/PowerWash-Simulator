using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private RaycastHit hit;
    private LayerMask layerMask;
    private CleanDraw cleanDraw;

    [SerializeField]
    private float shotRange;
    [SerializeField]
    private float offsetY;
    private void Start()
    {
        layerMask = ~LayerMask.GetMask("Ground");
        transform.localRotation = Quaternion.Euler(new Vector3(0, offsetY, 0));
    }

    private void Update()
    {
        if (Physics.Raycast(transform.position, transform.forward, out hit, shotRange, layerMask))
        {
            hit.transform.TryGetComponent<CleanDraw>(out cleanDraw);
            if(cleanDraw)
            {
                cleanDraw.Wash(hit);
            }
            Debug.DrawRay(transform.position, transform.forward * shotRange, Color.green);
        }
        else
        {
            Debug.DrawRay(transform.position, transform.forward * shotRange, Color.red);
        }
    }
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawRay(transform.position, transform.forward * shotRange);
    }
}
