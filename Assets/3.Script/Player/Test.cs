using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Test : MonoBehaviour
{
    public float speed;      // 캐릭터 움직임 스피드.
    public float jumpSpeed; // 캐릭터 점프 힘.
    public float gravity;    // 캐릭터에게 작용하는 중력.

    private CharacterController controller; // 현재 캐릭터가 가지고있는 캐릭터 컨트롤러 콜라이더.
    private Vector3 MoveDir;                // 캐릭터의 움직이는 방향.

    void Start()
    {
        speed = 6.0f;
        jumpSpeed = 8.0f;
        gravity = 20.0f;

        MoveDir = Vector3.zero;
        controller = GetComponent<CharacterController>();
    }

    void Update()
    {
        if (controller.isGrounded)
        {
            // 캐릭터 점프
            if (Input.GetButton("Jump"))
                MoveDir.y = jumpSpeed;
        }

        // 위, 아래 움직임 셋팅.
        Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        // 벡터를 로컬 좌표계 기준에서 월드 좌표계 기준으로 변환한다.
        move = transform.TransformDirection(move);

        // 스피드 증가.
        move *= speed;

        // 캐릭터에 중력 적용.
        MoveDir.y -= gravity * Time.deltaTime;

        // MoveDir의 x와 z축을 move의 값으로 설정하여 방향키에 따라 이동하도록 한다.
        MoveDir.x = move.x;
        MoveDir.z = move.z;

        // 캐릭터 움직임.
        controller.Move(MoveDir * Time.deltaTime);
    }
}
