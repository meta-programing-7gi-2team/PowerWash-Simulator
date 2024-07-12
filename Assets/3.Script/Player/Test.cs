using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Test : MonoBehaviour
{
    public float speed;      // ĳ���� ������ ���ǵ�.
    public float jumpSpeed; // ĳ���� ���� ��.
    public float gravity;    // ĳ���Ϳ��� �ۿ��ϴ� �߷�.

    private CharacterController controller; // ���� ĳ���Ͱ� �������ִ� ĳ���� ��Ʈ�ѷ� �ݶ��̴�.
    private Vector3 MoveDir;                // ĳ������ �����̴� ����.

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
            // ĳ���� ����
            if (Input.GetButton("Jump"))
                MoveDir.y = jumpSpeed;
        }

        // ��, �Ʒ� ������ ����.
        Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));

        // ���͸� ���� ��ǥ�� ���ؿ��� ���� ��ǥ�� �������� ��ȯ�Ѵ�.
        move = transform.TransformDirection(move);

        // ���ǵ� ����.
        move *= speed;

        // ĳ���Ϳ� �߷� ����.
        MoveDir.y -= gravity * Time.deltaTime;

        // MoveDir�� x�� z���� move�� ������ �����Ͽ� ����Ű�� ���� �̵��ϵ��� �Ѵ�.
        MoveDir.x = move.x;
        MoveDir.z = move.z;

        // ĳ���� ������.
        controller.Move(MoveDir * Time.deltaTime);
    }
}
