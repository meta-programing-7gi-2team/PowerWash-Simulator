using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stream : MonoBehaviour
{
    private RaycastHit hit;
    private Transform playerCamera;

    [SerializeField]
    private float shotRange;

    private void Start()
    {
        playerCamera = Camera.main.transform;
    }

    private void Update()
    {
        if (Physics.Raycast(playerCamera.position, transform.forward, out hit, shotRange))
        {
            Debug.DrawRay(playerCamera.position, transform.forward * shotRange, Color.red);
        }
        else
        {
            Debug.DrawRay(playerCamera.position, transform.forward * shotRange, Color.green);
        }
    }
}
