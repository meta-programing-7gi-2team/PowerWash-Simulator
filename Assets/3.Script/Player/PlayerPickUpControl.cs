using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private Transform playerCamera;
    private GameObject target;
    private RaycastHit hit;
    private Vector3 pos;
    private bool isHand = false;
    private Transform targetParent;

    private void Update()
    {
        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity);

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Movable")) && !isHand)
            {
                isHand = true;
                target = hit.transform.gameObject;
                targetParent = target.transform.parent;
                target.transform.parent = playerCamera;
                target.transform.GetComponent<Collider>().isTrigger = true;
            }
            else if(isHand && target.GetComponent<MovableObject>().GetIsArrange())
            {
                isHand = false;
                target.transform.parent = targetParent;
                target.transform.GetComponent<Collider>().isTrigger = false;
            }
        }
        if(Input.GetMouseButtonDown(0) && isHand && target.GetComponent<MovableObject>().GetIsArrange())
        {
            isHand = false;
            target.transform.parent = targetParent;
            target.transform.GetComponent<Collider>().isTrigger = false;
        }
        if (isHand)
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            Plane Ground = new Plane(Vector3.up, Vector3.zero);
            Ground.Raycast(ray, out float Length);
            pos = ray.GetPoint(Length);
            pos.y = 0 + target.transform.GetComponent<BoxCollider>().size.y / 2;
            target.transform.position = pos;
            target.transform.rotation = Quaternion.Euler(Vector3.zero);
        }       
    }
}
