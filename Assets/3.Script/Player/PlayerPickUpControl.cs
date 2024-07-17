using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private LayerMask movable;

    private Transform playerCamera;
    private MovableObject target;
    private PlayerState playerState;

    private RaycastHit hit;
 
    private void Start()
    {
        playerCamera = Camera.main.transform;
        playerState = FindObjectOfType<PlayerState>();
    }
    private void Update()
    {
        if (playerState.state.Equals(State.Run)) return;

        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, ~movable);

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (!target)
            {
                if (hit.transform.TryGetComponent<MovableObject>(out target))
                {
                    TargetPickUp();
                }
            }
            else
            {
                if (target.isArrange)
                {
                    TargetDrop();
                }
            }
        }

        if (target)
        {
            TargetMove();

            if (Input.GetMouseButtonDown(0) && target.isArrange)
            {
                TargetDrop();
            }
        }
    }
    private void TargetPickUp()
    {
        playerState.SetState(State.Hand);
        target.PickUped();
    }
    private void TargetDrop()
    {
        playerState.SetState(State.Idle);
        target.Droped();
        target = null;
    }
    private void TargetMove()
    {
        target.Move(hit.point);
    }
}
