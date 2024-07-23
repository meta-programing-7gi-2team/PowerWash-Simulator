using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class PlayerController : MonoBehaviour,IObserver
{
    private CharacterController cc;
    private Animator player_anim;
    private State state;
    private Vector3 moveDir = Vector3.zero;
    private Transform playerCamera;
    [SerializeField] private PlayerState playerState;
    [SerializeField] private float speed = 3f;
    [SerializeField] private float speedWeight = 1f;
    [SerializeField] private float jumpForce = 6f;
    [SerializeField] private float gravity = 20f;

    private void OnEnable()
    {
        playerState.Register(this);
    }
    private void Start()
    {
        playerCamera = Camera.main.transform;
        cc = GetComponent<CharacterController>();
        player_anim = GetComponent<Animator>();
        playerState = GetComponent<PlayerState>();
    }
    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if(!state.Equals(State.Hand))
            Run();

        Move();

        if (Input.GetKeyDown(KeyCode.LeftControl) &&
            !state.Equals(State.Hand) &&
            !state.Equals(State.Run))
        {
            ChangePosture();
        }
    }
    private void Move()
    {
        if (cc.isGrounded && !state.Equals(State.Hand))
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                if(state.Equals(State.Crouch) ||
                    state.Equals(State.Lie))
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
        switch (state)
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
        switch (state)
        {
            case State.Idle:
                playerCamera.localPosition = new Vector3(0, 1f, 0);
                break;
            case State.Crouch:
                playerCamera.localPosition = new Vector3(0, 0.1f, 0);
                break;
            case State.Lie:
                playerCamera.localPosition = new Vector3(0, -0.5f, 0);
                break;
            case State.Run:
            case State.Hand:
                playerCamera.localPosition = new Vector3(0, 1f, 0);
                break;
        }
    }
    private void ChangePosture()
    {
        switch (state)
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
    private void SetAnimation()
    {
        if (state.Equals(State.Run) ||
           state.Equals(State.Hand))
        {
            player_anim.SetBool("HandUp", false);
        }
        else
        {
            player_anim.SetBool("HandUp", true);
        }
    }
    public void UpdateState(State state)
    {
        this.state = state;
        SetAnimation();
        SetHeight();
        SetSpeedWeight();
    }
}
