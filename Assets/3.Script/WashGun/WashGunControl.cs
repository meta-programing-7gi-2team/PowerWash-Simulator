using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour
{
    private GameObject water;
    private Transform playerCamera;
    private NozzleReplacement nozzle;
    private Animator anim;

    [SerializeField] private float shotRange = 4f;
    [SerializeField] private float blockRange;
    [SerializeField] private LayerMask player;

    private bool isAuto = false;
    private RaycastHit hit;
    private Vector3 dir;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        nozzle = GetComponent<NozzleReplacement>();
        anim = GetComponent<Animator>();

        NozzleChange();
        SetBlockRange(1.1f);
    }
    private void NozzleChange()
    {
        water = nozzle.GetCurrentActiveWaterParticle();
    }
    private void Update()
    {
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
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, ~player))
        {
            anim.SetBool("Await", true);
            water.SetActive(false);
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
