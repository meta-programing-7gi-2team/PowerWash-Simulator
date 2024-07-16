using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private RaycastHit hit;
    private CleanDraw cleanDraw;
    private LayerMask layerMask;

    [SerializeField]
    private float shotRange;

    private void Start()
    {
        layerMask = ~LayerMask.GetMask("Ground");
    }

    private void Update()
    {
        if (Physics.Raycast(transform.position, transform.forward, out hit, shotRange, layerMask))
        {
            Debug.DrawRay(transform.position, transform.forward * shotRange, Color.red);
            cleanDraw = hit.collider.gameObject.GetComponent<CleanDraw>();
            if(cleanDraw != null)
            {
                cleanDraw.Wash(hit);
            }
        }
        else
        {
            Debug.DrawRay(transform.position, transform.forward * shotRange, Color.green);
        }
    }
}
