using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActableObject : MonoBehaviour
{
    private bool isOpen = false;
    [SerializeField]
    private Animator anim;
    [SerializeField]
    private DangerZone dangerZone;

    public void Act()
    {
        if (dangerZone.isDanger) return;

        isOpen = !isOpen;
        if (isOpen)
        {
            anim.SetTrigger("Open");
        }
        else
        {
            anim.SetTrigger("Close");
        }
    } 
}
