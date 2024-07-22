using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour
{
    private GameObject water;
    private GameObject stream;
    [SerializeField] private LayerMask layer;
    private Animator anim;

    private bool isAuto = false;
    private float blockRange;

    public bool isFire { get; private set; }
    public Vector3 firePoint { get; private set; }

    private void Start()
    {
        anim = GetComponent<Animator>();
        blockRange = 0.6f;
    }
    private void Update()
    {
        firePoint = GameManager.view.position + GameManager.view.forward * blockRange;

        if (PlayerState.instance.state.Equals(State.Hand) ||
            PlayerState.instance.state.Equals(State.Run))
        {
            Stop();
            return;
        }

        if (!BlockCheck())
        {
            if (Input.GetMouseButtonDown(1) ||
            (isAuto && Input.GetMouseButtonDown(0)))
            {
                isAuto = !isAuto;
            }
            if (Input.GetMouseButton(0) || isAuto)
            {
                Fire();
            }
            else if (Input.GetMouseButtonUp(0) || !isAuto)
            {
                Stop();
            }
        }
    }
    private void Fire()
    {
        isFire = true;
        water.SetActive(true);
        stream.SetActive(true);
    }
    private void Stop()
    {
        isFire = false;
        water.SetActive(false);
        stream.SetActive(false);
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(GameManager.view.position, GameManager.view.forward, blockRange, layer))
        {
            Stop();
            anim.SetBool("Await", true);
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
    public void SetNozzleInfo(GameObject water, GameObject stream)
    {
        this.water = water;
        this.stream = stream;
    }
}
