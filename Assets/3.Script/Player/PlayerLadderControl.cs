using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerLadderControl : MonoBehaviour
{
    private Transform playerCamera;
    private PlayerState playerState;
    private LadderObject ladder;
    private LadderShape shape;

    [SerializeField]
    private GameObject ladderShapes;
    [SerializeField]
    private LayerMask shapeLayer;
    private RaycastHit hit;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        playerState = FindObjectOfType<PlayerState>();
    }
    private void Update()
    {
        if (playerState.state.Equals(State.Run)) return;

        if (ladder)
        {
            if(Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, shapeLayer))
            {
                hit.transform.TryGetComponent<LadderShape>(out shape);
                if (!shape.state.Equals(Shape.Block))
                {
                    shape.SetShape(Shape.Arrange);
                    ladder.Arranged(shape.pos, shape.rot, shape.valueY);
                }
                else
                {
                    ladder.PickUped();
                }
            }
            else
            {
                if (shape && !shape.state.Equals(Shape.Block)) shape.SetShape(Shape.NotArrange);
                ladder.PickUped();
            }
        }
        else
        {
            Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity);
        }

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (!ladder)
            {
                if(hit.transform.TryGetComponent<LadderObject>(out ladder))
                {
                    PickUp();
                }
            }
            else
            {
                if (ladder.isArranged)
                {
                    Place();
                }
                else
                {
                    Drop();
                }
            }
        }
        if (Input.GetMouseButton(0))
        {
            if (ladder)
            {
                if (ladder.isArranged)
                {
                    Place();
                }
                else
                {
                    Drop();
                }
            }
        }
    }
    private void PickUp()
    {
        playerState.SetState(State.Hand);
        ladderShapes.SetActive(true);
        ladder.PickUped();
    }
    private void Drop()
    {
        playerState.SetState(State.Idle);
        ladderShapes.SetActive(false);
        ladder.Droped();
        ladder = null;
    }
    private void Place()
    {
        playerState.SetState(State.Idle);
        ladderShapes.SetActive(false);
        ladder.Placed();
        ladder = null;
    }
}
