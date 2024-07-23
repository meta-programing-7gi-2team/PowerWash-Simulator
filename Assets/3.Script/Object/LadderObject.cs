using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderObject : InteractionObject
{
    [SerializeField]
    private MeshCollider[] part;
    [SerializeField] 
    private PlayerState playerState;
    private Transform parent;
    private Transform extension;
    private Transform playerCamera;
    private float valueY;

    private Vector3 defaultPos;
    private Quaternion defaultRot;

    private Blueprint blueprint;
    private GameObject ladder_Blueprint;
    public bool isArranged { get; private set; }

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
        playerCamera = Camera.main.transform;
        ladder_Blueprint = GameObject.FindWithTag("Blueprint").transform.GetChild(0).gameObject;
        parent = transform.parent;
        extension = transform.GetChild(1);
        valueY = 0f;
        defaultPos = transform.position;
        defaultRot = transform.rotation;
        isArranged = false;
    }
    public override void OnAct(InteractionController interactionController)
    {
        playerState.SetState(State.Hand);
        ladder_Blueprint.SetActive(true);
        isArranged = false;
        transform.parent = playerCamera;
        transform.localPosition = new Vector3(0, -0.5f, 1f);
        transform.localRotation = Quaternion.Euler(0f, 90f, 20f);
        extension.localPosition = Vector3.zero;
        part[0].enabled = false;
        part[1].enabled = false;
    }
    public override void NotAct(InteractionController interactionController)
    {
        playerState.SetState(State.Idle);
        ladder_Blueprint.SetActive(false);
        if (isArranged)
        {
            isArranged = false;
            defaultPos = transform.position;
            defaultRot = transform.rotation;
            valueY = extension.localPosition.y;
        }
        else
        {
            transform.position = defaultPos;
            transform.rotation = defaultRot;
            extension.localPosition = new Vector3(0, valueY, 0);
        }
        transform.parent = parent;
        part[0].enabled = true;
        part[1].enabled = true;
        interactionController.Init();
    }
    public override void OnMove(RaycastHit hit)
    {
        blueprint = null;
        hit.transform.TryGetComponent<Blueprint>(out blueprint);

        if (blueprint)
        {
            if (!blueprint.isBlock)
            {
                isArranged = true;
                transform.parent = parent;
                transform.position = blueprint.pos;
                transform.rotation = blueprint.rot;
                extension.localPosition = new Vector3(0, blueprint.valueY, 0);
            }
            else
            {
                isArranged = false;
                transform.parent = playerCamera;
                transform.localPosition = new Vector3(0, -0.5f, 1f);
                transform.localRotation = Quaternion.Euler(0f, 90f, 20f);
                extension.localPosition = Vector3.zero;
            }
        }
        else
        {
            isArranged = false;
            transform.parent = playerCamera;
            transform.localPosition = new Vector3(0, -0.5f, 1f);
            transform.localRotation = Quaternion.Euler(0f, 90f, 20f);
            extension.localPosition = Vector3.zero;
        }
    }

}
