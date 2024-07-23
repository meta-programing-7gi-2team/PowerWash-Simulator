using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WashGunControl : MonoBehaviour,IObserver
{
    private GameObject water;
    private GameObject stream;
    private Animator anim;
    [SerializeField] private LayerMask layer;
    [SerializeField] private PlayerState playerState;
    private State state;
    private Transform playerCamera;
    private bool isAuto = false;
    private float blockRange;
    public bool isFire { get; private set; }
    public Vector3 firePoint { get; private set; }

    private void OnEnable()
    {
        playerState.Register(this);
    }

    private void Start()
    {
        playerCamera = Camera.main.transform;
        anim = GetComponent<Animator>();
        blockRange = 0.6f;
    }
    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        firePoint = playerCamera.position + playerCamera.forward * blockRange;

        if (state.Equals(State.Hand) ||
            state.Equals(State.Run))
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
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, layer))
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
    public void UpdateState(State state)
    {
        this.state = state;
    }
}
