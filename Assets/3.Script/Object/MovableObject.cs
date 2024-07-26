using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovableObject : InteractionObject
{
    [SerializeField]
    private Material material;
    private Transform parent;
    [SerializeField] 
    private PlayerState playerState;
    private Transform playerCamera;
    private float yRotation = 0f;
    public bool isArrange { get; private set; }

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
        playerCamera = Camera.main.transform;
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
        playerState.SetState(State.Hand);
        isOnAct = true;
        transform.parent = playerCamera;
        gameObject.layer = LayerMask.NameToLayer("Movable");
        AudioManager.instance.PlaySFX_Walk("Stairs_Hold");
    }
    public override void NotAct(InteractionController interactionController)
    {
        if (!isArrange)
        {
            return;
        }
        else
        {
            playerState.SetState(State.Idle);
            isOnAct = false;
            transform.parent = parent;
            gameObject.layer = LayerMask.NameToLayer("Pack");
            AudioManager.instance.PlaySFX_Walk("Stairs_PutDown");
            interactionController.Init();
        }
    }
    public override void OnMove(RaycastHit hit)
    {
        transform.position = hit.point;
        transform.rotation = Quaternion.Euler(0, yRotation, 0);
    }

}
