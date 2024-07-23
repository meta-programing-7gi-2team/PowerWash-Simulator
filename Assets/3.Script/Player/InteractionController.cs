using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionController : MonoBehaviour
{
    private RaycastHit hit;
    private InteractionObject target;

    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if (target)
        {
            if(Physics.Raycast(GameManager.view.position, GameManager.view.forward, out hit, Mathf.Infinity, target.Layer))
            {
                target.OnMove(hit);
            }
            if (Input.GetMouseButtonDown(0))
            {
                target.NotAct(this);
            }
        }
        else
        {
            Physics.Raycast(GameManager.view.position, GameManager.view.forward, out hit, Mathf.Infinity);
        }

        if (Input.GetKeyDown(KeyCode.F))
        {
            if (!target)
            {
                hit.transform.TryGetComponent<InteractionObject>(out target);
                if(target) target.OnAct(this);
            }
            else
            {
                target.NotAct(this);
            }
        }
    }
    public void Init()
    {
        target = null;
    }
}
