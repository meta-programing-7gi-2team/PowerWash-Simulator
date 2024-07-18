using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectAnimationTrigger : MonoBehaviour
{
    private Transform playerCamera;
    private RaycastHit hit;
    private ActableObject target;

    private void Start()
    {
        playerCamera = Camera.main.transform;
    }
    private void Update()
    {
        if(Physics.Raycast(playerCamera.position, playerCamera.forward, out hit))
        {
            if (Input.GetKeyDown(KeyCode.F))
            {
                if (hit.transform.TryGetComponent<ActableObject>(out target))
                {
                    target.Act();
                }
            }
        }
    }
}
