using System.Collections;
using System.Collections.Generic;
using UnityEngine;

enum Posture
{
    Stand,
    Crouch,
    Lie
}
public class PlayerMovement : MonoBehaviour
{
    private Posture posture;
    private float value_V, value_H;
    
    [SerializeField] private float moveSpeed = 3;
    [SerializeField] private float runSpeed = 6;
    [SerializeField] private float crouchSpeed = 1f;
                    
    [SerializeField] private float standHeight = 0.5f;
    [SerializeField] private float crouchHeight = 0f;
    [SerializeField] private float lieHeight = -0.5f;
             
    [SerializeField] private float jumpSpeed = 6;

    private bool isGround = true;
    private float checkRadius = 0.2f;
    [SerializeField] private Transform groundCheck;
    [SerializeField] private LayerMask playerLayer;

    private Rigidbody player_rid;
    private Transform cameraTransform;

    private void Start()
    {
        TryGetComponent(out player_rid);
        cameraTransform = Camera.main.transform;
    }
    private void Update()
    {
        Move();

        isGround = Physics.CheckSphere(groundCheck.position, checkRadius, ~playerLayer);

        if (isGround && Input.GetKeyDown(KeyCode.Space))
        {
            Jump();
        }

        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            ChangePosture();
        }
    }
    private void Move()
    {
        value_V = Input.GetAxis("Vertical");
        value_H = Input.GetAxis("Horizontal");

        Vector3 forward = cameraTransform.forward;
        Vector3 right = cameraTransform.right;

        forward.y = 0f;
        right.y = 0f;

        forward.Normalize();
        right.Normalize();

        Vector3 dir = forward * value_V + right * value_H;

        if (Input.GetKey(KeyCode.LeftShift))
        {
            StandUp();
            player_rid.velocity = new Vector3(dir.x * runSpeed, player_rid.velocity.y, dir.z * runSpeed);
        }
        else
        {
            if(posture.Equals(Posture.Stand))
                player_rid.velocity = new Vector3(dir.x * moveSpeed, player_rid.velocity.y, dir.z * moveSpeed);
            else
                player_rid.velocity = new Vector3(dir.x * crouchSpeed, player_rid.velocity.y, dir.z * crouchSpeed);

        }
    }
    private void Jump()
    {
        player_rid.AddForce(Vector3.up * jumpSpeed, ForceMode.Impulse);
        StandUp();
    }
    private void ChangePosture()
    {
        switch (posture)
        {
            case Posture.Stand:
                posture = Posture.Crouch;
                cameraTransform.localPosition = new Vector3(0, crouchHeight, cameraTransform.localPosition.z);
                break;
            case Posture.Crouch:
                posture = Posture.Lie;
                cameraTransform.localPosition = new Vector3(0, lieHeight, cameraTransform.localPosition.z);
                break;
            case Posture.Lie:
                posture = Posture.Stand;
                cameraTransform.localPosition = new Vector3(0, standHeight, cameraTransform.localPosition.z);             
                break;
        }
    }
    private void StandUp()
    {
        posture = Posture.Stand;
        cameraTransform.localPosition = new Vector3(0, standHeight, cameraTransform.localPosition.z);
    }
}
