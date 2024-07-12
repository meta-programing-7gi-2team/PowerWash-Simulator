using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private Transform playerCamera;
    [SerializeField] 
    private LayerMask layer;

    private GameObject target;
    private Transform targetParent;
    private RaycastHit hit;
    private Vector3 pos;
    private bool isHand = false;

    private void Update()
    {
        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, ~layer);

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Movable")) && !isHand)
            {
                isHand = true;
                target = hit.transform.gameObject;
                targetParent = target.transform.parent;
                target.transform.parent = playerCamera;
                target.transform.GetComponent<Collider>().isTrigger = true;
                target.gameObject.layer = LayerMask.NameToLayer("Hand");
            }
            else if(isHand && target.GetComponent<MovableObject>().GetIsArrange())
            {
                isHand = false;
                target.transform.parent = targetParent;
                target.transform.GetComponent<Collider>().isTrigger = false;
                target.gameObject.layer = LayerMask.NameToLayer("Movable");
            }
        }
        if(Input.GetMouseButtonDown(0) && isHand && target.GetComponent<MovableObject>().GetIsArrange())
        {
            isHand = false;
            target.transform.parent = targetParent;
            target.transform.GetComponent<Collider>().isTrigger = false;
            target.gameObject.layer = LayerMask.NameToLayer("Movable");
        }
        if (isHand)
        {
            pos = hit.point;
            pos.y = pos.y + target.transform.GetComponent<BoxCollider>().size.y / 2;
            target.transform.position = pos;
            target.transform.rotation = Quaternion.Euler(Vector3.zero);

        }       
    }
}
