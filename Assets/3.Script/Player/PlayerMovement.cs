using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class PlayerMovement : MonoBehaviour
{

    private Vector3 moveDir;

    private CharacterController cc;

    public float speed = 3f;
    private float speedWeight = 1f;
    public float jumpForce = 6f;
    private float gravity = 20f;

    private void Start()
    {
        cc = GetComponent<CharacterController>();
    }
    private void Update()
    {
        Move();
    }
    private void Move()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            speedWeight = 2f;
        }
        else
        {
            speedWeight = 1f;
        }
        if (cc.isGrounded)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
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
}
