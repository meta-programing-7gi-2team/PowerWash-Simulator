using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExtensionReplacement : MonoBehaviour
{
    [SerializeField] private GameObject[] Extension;
    [SerializeField] Transform nozzlePivot;

    private PlayerState playerState;
    private WashGunControl washGun;
    private int currentIndex = 0;

    private void Start()
    {
        washGun = GetComponent<WashGunControl>();
        playerState = FindObjectOfType<PlayerState>();
    }
    private void Update()
    {
        if (playerState.state.Equals(State.Hand) ||
            playerState.state.Equals(State.Run))
            return;

        SetNozzlePivot();
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 0;
            Extension[currentIndex].SetActive(true);
            washGun.SetBlockRange(0.6f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 1;
            Extension[currentIndex].SetActive(true);
            washGun.SetBlockRange(0.8f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 2;
            Extension[currentIndex].SetActive(true);
            washGun.SetBlockRange(1f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 3;
            Extension[currentIndex].SetActive(true);
            washGun.SetBlockRange(1.4f);
        }
    }
    public void SetNozzlePivot()
    {
        switch (currentIndex)
        {
            case 0:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.2f);
                break;
            case 1:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.4f);
                break;
            case 2:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.65f);
                break;
            case 3:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 1f);
                break;
        }
    }
    
}
