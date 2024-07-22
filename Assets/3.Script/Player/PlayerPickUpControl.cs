using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPickUpControl : MonoBehaviour
{
    [SerializeField]
    private LayerMask layer;
    private RaycastHit hit;

    private MovableObject target;

    private void Update()
    {
        if (PlayerState.instance.state.Equals(State.Run))
            return;

        Physics.Raycast(GameManager.view.position, GameManager.view.forward, out hit, Mathf.Infinity, layer);

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
        PlayerState.instance.SetState(State.Hand);
        target.PickUped();
    }
    private void TargetDrop()
    {
        PlayerState.instance.SetState(State.Idle);
        target.Droped();
        target = null;
    }
    private void TargetMove()
    {
        target.Move(hit.point);
    }
}
