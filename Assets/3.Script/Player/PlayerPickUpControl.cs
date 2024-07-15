using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    private Transform playerCamera;
    private RaycastHit hit;
    [SerializeField] 
    private LayerMask hand;
    private bool isHand = false;
    private MovableObject target;

    private void Start()
    {
        playerCamera = Camera.main.transform;
    }
    private void Update()
    {
        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, ~hand);

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Movable")) && !isHand)
            {
                TargetPickUp();
            }
            else if(isHand && target.GetComponent<MovableObject>().GetIsArrange())
            {
                TargetDrop();
            }
        }
        if(Input.GetMouseButtonDown(0) && isHand && target.GetComponent<MovableObject>().GetIsArrange())
        {
            TargetDrop();
        }
        if (isHand)
        {
            TargetMove();
        }
    }
    private void TargetPickUp()
    {
        isHand = true;
        target = hit.transform.GetComponent<MovableObject>();

        target.PickUped();
    }
    private void TargetDrop()
    {
        isHand = false;

        target.Droped();
    }
    private void TargetMove()
    {
        target.Move(hit.point);
    }
}
