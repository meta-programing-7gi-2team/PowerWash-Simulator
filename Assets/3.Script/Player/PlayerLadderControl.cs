using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerLadderControl : MonoBehaviour
{
    [SerializeField]
    private LayerMask hand;

    private Transform playerCamera;
    private MovableObject target;
    private PlayerState playerState;

    private RaycastHit hit;
    private bool isHand = false;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        playerState = FindObjectOfType<PlayerState>();
    }
    private void Update()
    {
        if (playerState.state.Equals(State.Run)) return;

        Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, ~hand);

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (hit.transform.gameObject.layer.Equals(LayerMask.NameToLayer("Movable")) && !isHand)
            {
                TargetPickUp();
            }
            else if (target.isArrange && isHand)
            {
                TargetDrop();
            }
        }
        if (isHand)
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
        isHand = true;
        target = hit.transform.GetComponent<MovableObject>();
        target.PickUped();
    }
    private void TargetDrop()
    {
        playerState.SetState(State.Idle);
        isHand = false;
        target.Droped();
    }
    private void TargetMove()
    {
        target.Move(hit.point);
    }
}
