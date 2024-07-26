using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExtensionControl : MonoBehaviour
{
    [SerializeField] private MeshFilter extension;
    [SerializeField] private Mesh[] mesh;
    [SerializeField] Transform nozzlePivot;
    private WashGunControl washGun;
    public int index { get; private set; }

    private void Start()
    {
        washGun = GetComponent<WashGunControl>();
        index = 0;
    }
    public void ChangeExtension(int index)
    {
        if (Cursor.visible || !washGun.isReady) return;

        switch (index)
        {
            case 0:
                this.index = 0;
                extension.mesh = mesh[this.index];
                washGun.SetBlockRange(0.6f);
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.2f);
                break;
            case 1:
                this.index = 1;
                extension.mesh = mesh[this.index];
                washGun.SetBlockRange(0.8f);
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.4f);
                break;
            case 2:
                this.index = 2;
                extension.mesh = mesh[this.index];
                washGun.SetBlockRange(1f);
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.65f);
                break;
            case 3:
                this.index = 3;
                extension.mesh = mesh[this.index];
                washGun.SetBlockRange(1.4f);
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 1f);
                break;
        }
    }
}
