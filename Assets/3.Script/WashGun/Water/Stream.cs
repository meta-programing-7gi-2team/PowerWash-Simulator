using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private RaycastHit hit;
    private Transform playerCamera;
    private CleanDraw cleanDraw;
    private LayerMask layerMask;

    [SerializeField]
    private float shotRange;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        layerMask = ~LayerMask.GetMask("Ground");
    }

    private void Update()
    {
        if (Physics.Raycast(playerCamera.position, transform.forward, out hit, shotRange, layerMask))
        {
            Debug.DrawRay(playerCamera.position, transform.forward * shotRange, Color.red);
            cleanDraw = hit.collider.gameObject.GetComponent<CleanDraw>();
            if(cleanDraw != null)
            {
                cleanDraw.Wash(hit);
            }
        }
        else
        {
            Debug.DrawRay(playerCamera.position, transform.forward * shotRange, Color.green);
        }
    }
}
