using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExtensionControl : MonoBehaviour
{
    [SerializeField] private GameObject[] Extension;
    [SerializeField] Transform nozzlePivot;

    private WashGunControl washGun;
    public int Index { get; private set; }

    private void Start()
    {
        washGun = GetComponent<WashGunControl>();
        Index = 0;
    }
    private void Update()
    {
        if (PlayerState.instance.state.Equals(State.Hand) ||
            PlayerState.instance.state.Equals(State.Run))
            return;

        SetNozzlePivot();
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Extension[Index].SetActive(false);
            Index = 0;
            Extension[Index].SetActive(true);
            washGun.SetBlockRange(0.6f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Extension[Index].SetActive(false);
            Index = 1;
            Extension[Index].SetActive(true);
            washGun.SetBlockRange(0.8f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            Extension[Index].SetActive(false);
            Index = 2;
            Extension[Index].SetActive(true);
            washGun.SetBlockRange(1f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            Extension[Index].SetActive(false);
            Index = 3;
            Extension[Index].SetActive(true);
            washGun.SetBlockRange(1.4f);
        }
    }
    public void SetNozzlePivot()
    {
        switch (Index)
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
