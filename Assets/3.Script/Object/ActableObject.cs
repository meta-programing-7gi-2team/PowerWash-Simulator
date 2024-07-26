using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActableObject : InteractionObject
{
    [SerializeField]
    private Animator anim;
    [SerializeField]
    private DangerZone dangerZone;
    private bool isOpen;
    public DangerZone DangerZone => dangerZone;
    public override void OnAct(InteractionController interactionController)
    {
        if (!isOpen)
        {
            isOpen = true;
            AudioManager.instance.PlaySFX_UI("Open_Door");
            anim.SetTrigger("Open");
        }
        else
        {
            if (!dangerZone.isDanger)
            {
                isOpen = false;
                AudioManager.instance.PlaySFX_UI("Close_Door");
                anim.SetTrigger("Close");
            }
        }
        interactionController.Init();
    }
    public override void NotAct(InteractionController interactionController)
    {
    }
    public override void OnMove(RaycastHit hit)
    {
    }
}
