using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour
{
    private GameObject water;
    private GameObject stream;
    private Transform playerCamera;
    private NozzleControl nozzle;
    private Animator anim;
    private PlayerState playerState;

    [SerializeField] private float shotRange = 4f;
    [SerializeField] private float blockRange;
    [SerializeField] private LayerMask playerLayer;

    private bool isAuto = false;
    private RaycastHit hit;
    private Vector3 dir;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        nozzle = GetComponent<NozzleControl>();
        anim = GetComponent<Animator>();
        playerState = FindObjectOfType<PlayerState>();

        NozzleChange();
        SetBlockRange(1.1f);
    }
    private void NozzleChange()
    {
        water = nozzle.GetCurrentWater();
        stream = nozzle.GetCurrentStream();
    }
    private void Update()
    {
        if (playerState.state.Equals(State.Hand) ||
            playerState.state.Equals(State.Run))
            return;
        NozzleChange();
        if (!BlockCheck())
        {
            if (Input.GetMouseButtonDown(1) ||
            (isAuto && Input.GetMouseButtonDown(0)))
            {
                isAuto = !isAuto;
            }
            if (Input.GetMouseButton(0) || isAuto)
            {
                Shot();
            }
            else if (Input.GetMouseButtonUp(0) || !isAuto)
            {
                water.SetActive(false);
                stream.SetActive(false);
            }
        }
    }
    private void Shot()
    { 
        if(Physics.Raycast(playerCamera.position, playerCamera.forward, out hit))
        {
            dir = hit.point;
        }
        else
        {
            dir = playerCamera.position + playerCamera.forward * shotRange;
        }
        water.transform.LookAt(dir);
        water.SetActive(true);
        stream.SetActive(true);
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, ~playerLayer))
        {
            anim.SetBool("Await", true);
            water.SetActive(false);
            stream.SetActive(false);
            return true;
        }
        else
        {
            anim.SetBool("Await", false);
            return false;
        }
    }
    public void SetBlockRange(float range)
    {
        blockRange = range;
    }
}
