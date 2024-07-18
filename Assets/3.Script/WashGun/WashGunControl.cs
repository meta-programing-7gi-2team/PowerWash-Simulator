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
    private Crosshair crosshair;

    private LayerMask layers;
    [SerializeField]
    private float blockRange;
    private bool isAuto = false;


    private void Start()
    {
        playerCamera = Camera.main.transform;
        nozzle = GetComponent<NozzleControl>();
        anim = GetComponent<Animator>();
        playerState = FindObjectOfType<PlayerState>();
        crosshair = FindObjectOfType<Crosshair>();
        layers = (1 << LayerMask.NameToLayer("Pack")) + (1 << LayerMask.NameToLayer("Player"));
        blockRange = 0.6f;
        NozzleChange();
        
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
        {
            water.SetActive(false);
            stream.SetActive(false);
            return;
        }
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
                crosshair.SetIsFade(true);
            }
        }
    }
    private void Shot()
    {
        water.SetActive(true);
        stream.SetActive(true);
        crosshair.SetIsFade(false);
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, ~layers))
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
