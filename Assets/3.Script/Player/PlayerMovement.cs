using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum State
{
    Walk,
    Crouch,
    Lie
}
public class PlayerMovement : MonoBehaviour
{
    private State state;
    private Vector3 moveDir;

    private CharacterController cc;

    [SerializeField]
    private Transform groundCheck;
    private bool isGround;
    private float checkRadius = 0.2f;
    [SerializeField]
    private LayerMask playerLayer;

    public float speed = 3f;
    private float speedWeight = 1f;
    public float jumpForce = 6f;
    private float gravity = 20f;

    private void Start()
    {
        cc = GetComponent<CharacterController>();
        state = State.Walk;
    }
    private void Update()
    {
        Move();
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            ReplaceState();
        }
    }
    private void Move()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            Stand();
            speedWeight = 2f;
        }
        else
        {
            if (!state.Equals(State.Walk))
                speedWeight = 0.5f;
            else
                speedWeight = 1f;
        }

        if (cc.isGrounded)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                Stand();
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
    private void ReplaceState()
    {
        switch (state)
        {
            case State.Walk:
                state = State.Crouch;
                cc.height = 1.5f;
                break;
            case State.Crouch:
                state = State.Lie;
                cc.height = 1f;
                break;
            case State.Lie:
                state = State.Walk;
                cc.height = 2f;
                break;
        }
    }
    private void Stand()
    {
        state = State.Walk;
        cc.height = 2.0f;
    }
    private bool GroundCheck()
    {
        if (state.Equals(State.Lie))
            checkRadius = 0.5f;
        else
            checkRadius = 0.2f;

        return isGround =  Physics.CheckSphere(groundCheck.position, checkRadius, ~playerLayer);
    }
}
