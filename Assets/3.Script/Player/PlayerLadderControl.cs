using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerLadderControl : MonoBehaviour
{
    private LadderObject ladder;
    private Blueprint blueprint;
    private GameObject ladder_Blueprint;

    [SerializeField]
    private LayerMask layer;
    private RaycastHit hit;

    private void Start()
    {
        ladder_Blueprint = GameObject.FindWithTag("Blueprint").transform.GetChild(0).gameObject;
    }
    private void Update()
    {
        if (PlayerState.instance.state.Equals(State.Run))
            return;

        if (ladder)
        {
            if(Physics.Raycast(GameManage.view.position, GameManage.view.forward, out hit, Mathf.Infinity, layer))
            {
                hit.transform.TryGetComponent<Blueprint>(out blueprint);
                if (!blueprint.state.Equals(Blueprint_State.Block))
                {
                    blueprint.SetBlueprintState(Blueprint_State.Arrange);
                    ladder.Arranged(blueprint.pos, blueprint.rot, blueprint.valueY);
                }
                else
                {
                    ladder.PickUped();
                }
            }
            else
            {
                if (blueprint && !blueprint.state.Equals(Blueprint_State.Block)) blueprint.SetBlueprintState(Blueprint_State.NotArrange);
                ladder.PickUped();
            }
        }
        else
        {
            Physics.Raycast(GameManage.view.position, GameManage.view.forward, out hit, Mathf.Infinity);
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
        PlayerState.instance.SetState(State.Hand);
        ladder_Blueprint.SetActive(true);
        ladder.PickUped();
    }
    private void Drop()
    {
        PlayerState.instance.SetState(State.Idle);
        ladder_Blueprint.SetActive(false);
        ladder.Droped();
        ladder = null;
    }
    private void Place()
    {
        PlayerState.instance.SetState(State.Idle);
        ladder_Blueprint.SetActive(false);
        ladder.Placed();
        ladder = null;
    }
}
