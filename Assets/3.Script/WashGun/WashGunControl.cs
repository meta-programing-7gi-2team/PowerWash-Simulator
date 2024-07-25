using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
public class WashGunControl : MonoBehaviour,IObserver
{
    private GameObject water;
    private GameObject stream;
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
        blockRange = 0.6f;
    }
    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if (state.Equals(State.Hand) ||
          state.Equals(State.Run))
        {
            return;
        }

        if (!BlockCheck())
        {
            firePoint = playerCamera.position + playerCamera.forward * blockRange;

            if (Input.GetMouseButtonDown(1))
            {
                if (isAuto)
                {
                    Stop();
                }
                isAuto = !isAuto;
            }
            if (Input.GetMouseButton(0) || isAuto)
            {
                Fire();
            }
            else if (Input.GetMouseButtonUp(0))
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
        transform.DOLocalMove(new Vector3(Random.Range(-0.012f, -0.008f), Random.Range(-0.003f, 0.003f), 0.27f), 0.1f);
    }
    private void Stop()
    {
        isFire = false;
        water.SetActive(false);
        stream.SetActive(false);
        transform.DOLocalMove(new Vector3(-0.01f, 0, 0.32f), 0.15f).OnComplete(Rebound);
    }
    private void Rebound()
    {
        transform.DOLocalMove(new Vector3(-0.01f, 0f, 0.3f), 0.05f);
    }
    private bool BlockCheck()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, layer))
        {
            isFire = false;
            water.SetActive(false);
            stream.SetActive(false);
            transform.DOLocalRotate(new Vector3(15, -45, 20), 0.1f);
            return true;
        }
        else
        {
            transform.DOLocalRotate(Vector3.zero, 0.1f);
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
        if (state.Equals(State.Hand) ||
           state.Equals(State.Run))
        {
            Stop();
        }
    }
}
