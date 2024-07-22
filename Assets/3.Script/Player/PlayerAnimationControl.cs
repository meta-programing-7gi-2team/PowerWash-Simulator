using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationControl : MonoBehaviour
{
    private Animator player_anim;

    private void Start()
    {
        player_anim = GetComponent<Animator>();
    }
    private void Update()
    {
        if(PlayerState.instance.state.Equals(State.Run) ||
            PlayerState.instance.state.Equals(State.Hand))
        {
            player_anim.SetBool("HandUp", false);
        }
        else
        {
            player_anim.SetBool("HandUp", true);
        }
    }
}
