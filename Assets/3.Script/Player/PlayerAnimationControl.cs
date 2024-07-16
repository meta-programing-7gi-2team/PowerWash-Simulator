using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationControl : MonoBehaviour
{
    private PlayerState playerState;
    private Animator player_anim;

    private void Start()
    {
        player_anim = GetComponent<Animator>();
        playerState = GetComponent<PlayerState>();
    }
    private void Update()
    {
        if(playerState.state.Equals(State.Run) ||
            playerState.state.Equals(State.Hand))
        {
            player_anim.SetBool("HandUp", false);
        }
        else
        {
            player_anim.SetBool("HandUp", true);
        }
    }
}
