using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private Transform playerCamera;
    private RaycastHit hit;
    [SerializeField] 
    private LayerMask hand;
    private bool isHand = false;

    private GameObject target;
    private Transform targetParent;
    private Vector3 targetPos;

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
        target = hit.transform.gameObject;
        targetParent = target.transform.parent;
        target.transform.parent = playerCamera;
        target.transform.GetComponent<Collider>().isTrigger = true;
        target.gameObject.layer = LayerMask.NameToLayer("Hand");
    }
    private void TargetDrop()
    {
        isHand = false;
        target.transform.parent = targetParent;
        target.transform.GetComponent<Collider>().isTrigger = false;
        target.gameObject.layer = LayerMask.NameToLayer("Movable");
    }
    private void TargetMove()
    {
        targetPos = hit.point;
        //targetPos.y = targetPos.y + target.transform.GetComponent<BoxCollider>().size.y / 2;
        target.transform.position = targetPos;
        target.transform.rotation = Quaternion.Euler(Vector3.zero);
    }
}
