using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class PlayerMovement : MonoBehaviour
{
    private CharacterController cc;

    private Vector3 moveDir = Vector3.zero;
    [SerializeField] private float speed = 3f;
    [SerializeField] private float speedWeight = 1f;
    [SerializeField] private float jumpForce = 6f;
    [SerializeField] private float gravity = 20f;

    private void Start()
    {
        cc = GetComponent<CharacterController>();
    }
    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        SetHeight();

        if(!PlayerState.instance.state.Equals(State.Hand))
            Run();

        SetSpeedWeight();

        Move();

        if (Input.GetKeyDown(KeyCode.LeftControl) &&
            !PlayerState.instance.state.Equals(State.Hand) &&
            !PlayerState.instance.state.Equals(State.Run))
        {
            ChangePosture();
        }
    }
    private void Move()
    {
        if (cc.isGrounded && !PlayerState.instance.state.Equals(State.Hand))
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                if(PlayerState.instance.state.Equals(State.Crouch) ||
                    PlayerState.instance.state.Equals(State.Lie))
                {
                    PlayerState.instance.SetState(State.Idle);
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
        switch (PlayerState.instance.state)
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
        switch (PlayerState.instance.state)
        {
            case State.Idle:
                GameManager.view.localPosition = new Vector3(0, 1f, 0);
                break;
            case State.Crouch:
                GameManager.view.localPosition = new Vector3(0, 0.1f, 0);
                break;
            case State.Lie:
                GameManager.view.localPosition = new Vector3(0, -0.5f, 0);
                break;
            case State.Run:
            case State.Hand:
                GameManager.view.localPosition = new Vector3(0, 1f, 0);
                break;
        }
    }
    private void ChangePosture()
    {
        switch (PlayerState.instance.state)
        {
            case State.Idle:
                PlayerState.instance.SetState(State.Crouch);
                break;
            case State.Crouch:
                PlayerState.instance.SetState(State.Lie);
                break;
            case State.Lie:
                PlayerState.instance.SetState(State.Idle);
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
            PlayerState.instance.SetState(State.Run);
        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {  
            PlayerState.instance.SetState(State.Idle);
        }
    }
}

