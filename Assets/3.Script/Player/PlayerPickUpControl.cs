using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private Transform playerCamera;
    private RaycastHit hit;

    private void Update()
    {
        if(Physics.Raycast(playerCamera.position,playerCamera.forward,out hit, Mathf.Infinity))
        {
            if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Movable")))
            {
                Debug.DrawRay(playerCamera.position, playerCamera.forward,Color.green);
            }
            else
            {
                Debug.DrawRay(playerCamera.position, playerCamera.forward, Color.yellow);
            }

        }
        else
        {
            Debug.DrawRay(playerCamera.position, playerCamera.forward, Color.red);
        }
    }
}
