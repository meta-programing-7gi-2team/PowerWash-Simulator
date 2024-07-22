using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectAnimationTrigger : MonoBehaviour
{
    private RaycastHit hit;
    private ActableObject target;

    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if (PlayerState.instance.state.Equals(State.Run)) 
            return;
        
        if (Physics.Raycast(GameManager.view.position, GameManager.view.forward, out hit))
        {
            if (Input.GetKeyDown(KeyCode.F))
            {
                if (hit.transform.TryGetComponent<ActableObject>(out target))
                {
                    target.Act();
                }
            }
        }
    }
}
