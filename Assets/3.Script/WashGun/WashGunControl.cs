using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class WashGunControl : MonoBehaviour,IObserver
{
    [SerializeField] private PlayerState playerState;
    [SerializeField] private LayerMask layer;
    private Transform playerCamera;
    private GameObject water;
    private float blockRange;
    public bool isAuto { get; private set; }
    public bool isReady { get; private set; }
    public Vector3 firePoint { get; private set; }

    private void OnEnable()
    {
        playerState.Register(this);
    }
    private void Start()
    {
        playerCamera = Camera.main.transform;
        isReady = true;
        blockRange = 0.6f;
    }
    private void Update()
    {
        if (UIManager.instance.isCursor || !isReady) return;

        if (!IsBlock())
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
        water.SetActive(true);
        AudioManager.instance.PlaySFX_Water("Water", true);
        transform.DOLocalMove(new Vector3(Random.Range(-0.012f, -0.008f), Random.Range(-0.003f, 0.003f), 0.27f), 0.1f);
    }
    private void Stop()
    {
        water.SetActive(false);
        AudioManager.instance.PlaySFX_Water_Stop();
        transform.DOLocalMove(new Vector3(-0.01f, 0, 0.32f), 0.15f).OnComplete(Rebound);
    }
    private void Rebound()
    {
        transform.DOLocalMove(new Vector3(-0.01f, 0f, 0.3f), 0.05f);
    }
    private bool IsBlock()
    {
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, blockRange, layer))
        {
            water.SetActive(false);
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
    public void SetWater(GameObject water)
    {
        this.water = water;
    }
    public void UpdateState(State state)
    {
        if (state.Equals(State.Hand) ||
           state.Equals(State.Run))
        {
            Stop();
            isReady = false;
        }
        else
        {
            isReady = true;
        }
    }
}
