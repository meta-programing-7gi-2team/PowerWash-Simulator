using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class PlayerMovement : MonoBehaviour
{

    private Vector3 moveDir;

    private CharacterController cc;
    private PlayerState playerState;


    public float speed = 3f;
    private float speedWeight = 1f;
    public float jumpForce = 6f;
    private float gravity = 20f;

    private void Start()
    {
        cc = GetComponent<CharacterController>();
        playerState = FindObjectOfType<PlayerState>();

    }
    private void Update()
    {
        SetHeight();
        if(!playerState.state.Equals(State.Hand))
            Run();

        SetSpeedWeight();
        Move();
        if (Input.GetKeyDown(KeyCode.LeftControl) &&
            !playerState.state.Equals(State.Hand) &&
            !playerState.state.Equals(State.Run))
        {
            ChangeState();
        }
    }
    private void Move()
    {
        if (cc.isGrounded && !playerState.state.Equals(State.Hand))
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                if(playerState.state.Equals(State.Crouch) ||
                    playerState.state.Equals(State.Lie))
                {
                    playerState.SetState(State.Idle);
                    cc.height = 2.0f;
                }
                moveDir.y = jumpForce;
            }
            else
            {
                moveDir.y = 0f;
            }
        }
        Vector3 dir = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        dir *= (speed * speedWeight);
        dir = transform.TransformDirection(dir);
        moveDir.x = dir.x;
        moveDir.z = dir.z;
        moveDir.y -= gravity * Time.deltaTime;
        cc.Move(moveDir * Time.deltaTime);
    }
    private void SetSpeedWeight()
    {
        switch (playerState.state)
        {
            case State.Idle:
            case State.Hand:
                speedWeight = 1f;
                break;
            case State.Crouch:
            case State.Lie:
                speedWeight = 0.5f;
                break;
            case State.Run:
                speedWeight = 2f;
                break;
        }
    }
    private void SetHeight()
    {
        switch (playerState.state)
        {
            case State.Idle:
                cc.height = 2.0f;
                break;
            case State.Crouch:
                cc.height = 1.4f;
                break;
            case State.Lie:
                cc.height = 1.0f;
                break;
            case State.Run:
                cc.height = 2.0f;
                break;
            case State.Hand:
                cc.height = 2.0f;
                break;
        }
    }
    private void ChangeState()
    {
        switch (playerState.state)
        {
            case State.Idle:
                playerState.SetState(State.Crouch);
                break;
            case State.Crouch:
                playerState.SetState(State.Lie);
                break;
            case State.Lie:
                playerState.SetState(State.Idle);
                break;
            case State.Run:
            case State.Hand:
                break;       
        }
    }
    private void Run()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            playerState.SetState(State.Run);
        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {  
            playerState.SetState(State.Idle);
        }
    }
}

