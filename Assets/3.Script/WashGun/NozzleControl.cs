using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
public class NozzleControl : MonoBehaviour
{

    [SerializeField] private MeshFilter nozzle;
    [SerializeField] private Mesh[] mesh;
    [SerializeField] private GameObject[] water;

    private WashGunControl washGun;
    private Crosshair crosshair;
    public static bool isVertical { get; private set; }
    public int index { get; private set; }
  
    private void Start()
    {
        index = 0;
        washGun = GetComponent<WashGunControl>();
        crosshair = FindObjectOfType<Crosshair>();
        washGun.SetWater(water[index]);
    }

    private void Update()
    {
        if (UIManager.instance.isCursor || !washGun.isReady) return;

        float scroll = Input.GetAxis("Mouse ScrollWheel");
        if (scroll > 0)
        {
            water[index].SetActive(false);
            index++;
            index = index >= mesh.Length ? 0 : index;
            ChangeNozzle();
        }
        else if (scroll < 0)
        {
            water[index].SetActive(false);
            index--;
            index = index < 0 ? mesh.Length - 1 : index;
            ChangeNozzle();
        }
        if (Input.GetKeyDown(KeyCode.R))
        {
            Rotate();
        }
    }
    private void ChangeNozzle()
    {
        nozzle.mesh = mesh[index];
        crosshair.ChangeImage(index);
        washGun.SetWater(water[index]);
    }
    public void ChageNozzle(int index)
    {
        water[this.index].SetActive(false);
        this.index = index;
        nozzle.mesh = mesh[index];
        crosshair.ChangeImage(index);
        washGun.SetWater(water[index]);
    } 
    private void Rotate()
    {
        if (isVertical)
        {
            isVertical = false;
            nozzle.transform.DOLocalRotate(Vector3.zero, 0.15f);
            crosshair.transform.DOLocalRotate(Vector3.zero, 0.15f);
        }
        else
        {
            isVertical = true;
            nozzle.transform.DOLocalRotate(new Vector3(0, 0, 90), 0.15f);
            crosshair.transform.DOLocalRotate(new Vector3(0, 0, 90), 0.15f);
        }
    }
}
