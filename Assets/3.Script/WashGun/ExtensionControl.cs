using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExtensionControl : MonoBehaviour
{
    [SerializeField] private MeshFilter extension;
    [SerializeField] private Mesh[] mesh;
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
        if (UIManager.instance.isCursor || !washGun.isReady) return;

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Index = 0;
            extension.mesh = mesh[Index];
            washGun.SetBlockRange(0.6f);
            nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.2f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Index = 1;
            extension.mesh = mesh[Index];
            washGun.SetBlockRange(0.8f);
            nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.4f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            Index = 2;
            extension.mesh = mesh[Index];
            washGun.SetBlockRange(1f);
            nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.65f);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            Index = 3;
            extension.mesh = mesh[Index];
            washGun.SetBlockRange(1.4f);
            nozzlePivot.localPosition = new Vector3(0, 0.04f, 1f);
        }
    }
 
}
