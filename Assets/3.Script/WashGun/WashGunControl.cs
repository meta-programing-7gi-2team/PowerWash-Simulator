using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour
{
    private GameObject water;
    private GameObject stream;
    private NozzleControl nozzle;
    private Crosshair crosshair;
    private Animator anim;

    private bool isAuto = false;
    private float blockRange;
    [SerializeField] private LayerMask layer;

    public Vector3 firePoint { get; private set; }

    private void Start()
    {
        nozzle = GetComponent<NozzleControl>();
        anim = GetComponent<Animator>();
        crosshair = FindObjectOfType<Crosshair>();
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
        firePoint = GameManage.view.position + GameManage.view.forward * blockRange;

        if (PlayerState.instance.state.Equals(State.Hand) ||
            PlayerState.instance.state.Equals(State.Run))
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
        if (Physics.Raycast(GameManage.view.position, GameManage.view.forward, blockRange, layer))
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
