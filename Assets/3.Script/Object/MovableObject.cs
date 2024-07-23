using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObject : InteractionObject
{
    [SerializeField]
    private Material material;
    private Transform parent;
    private float yRotation = 0f;
    public bool isArrange { get; private set; }

    private void Start()
    {
        parent = transform.parent;
    }
    private void Update()
    {
        if (isOnAct)
        {
            float scroll = Input.GetAxis("Mouse ScrollWheel");
            if (scroll > 0)
            {
                yRotation += 30f;
            }
            else if (scroll < 0)
            {
                yRotation -= 30f;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.layer.Equals(LayerMask.NameToLayer("Ground")) || !isOnAct) 
            return;

        material.color = Color.red;
        isArrange = false;
    }
    private void OnTriggerExit(Collider col)
    {
        material.color = Color.white;
        isArrange = true;
    }
    public override void OnAct(InteractionController interactionController)
    {
        PlayerState.instance.SetState(State.Hand);
        isOnAct = true;
        transform.parent = GameManager.view;
        gameObject.layer = LayerMask.NameToLayer("Movable");
    }
    public override void NotAct(InteractionController interactionController)
    {
        if (!isArrange)
        {
            return;
        }
        else
        {
            PlayerState.instance.SetState(State.Idle);
            isOnAct = false;
            transform.parent = parent;
            gameObject.layer = LayerMask.NameToLayer("Pack");
            interactionController.Init();
        }
    }
    public override void OnMove(RaycastHit hit)
    {
        transform.position = hit.point;
        transform.rotation = Quaternion.Euler(0, yRotation, 0);
    }
}
