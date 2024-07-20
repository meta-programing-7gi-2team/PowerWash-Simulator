using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NozzleControl : MonoBehaviour
{

    [SerializeField] private GameObject[] nozzle;
    [SerializeField] private Sprite[] crosshairImage;
    private Image crosshair;
    private float scroll;

    public int Index { get; private set; }

    private void Start()
    {
        Index = 0;
        crosshair = FindObjectOfType<Crosshair>().GetComponent<Image>();
    }

    private void Update()
    {
        if (PlayerState.instance.state.Equals(State.Hand) ||
            PlayerState.instance.state.Equals(State.Run))
            return;

        scroll = Input.GetAxis("Mouse ScrollWheel");
        if (scroll > 0)
        {
            ScrollUp();
        }
        else if (scroll < 0)
        {
            ScrollDown();
        }
        if (Input.GetKeyDown(KeyCode.R))
        {
            Rotate();
        }
    }
    private void ScrollUp()
    {
        nozzle[Index].SetActive(false);
        Index++;
        Index = Index >= nozzle.Length ? 0 : Index;
        nozzle[Index].SetActive(true);
        crosshair.sprite = crosshairImage[Index];
        crosshair.SetNativeSize();
    }
    private void ScrollDown()
    {
        nozzle[Index].SetActive(false);
        Index--;
        Index = Index < 0 ? nozzle.Length - 1 : Index;
        nozzle[Index].SetActive(true);
        crosshair.sprite = crosshairImage[Index];
        crosshair.SetNativeSize();
    }
    private void Rotate()
    {
        if (nozzle[Index].transform.localRotation.z > 0f)
        {

            nozzle[Index].GetComponent<Animator>().SetTrigger("Right");
            crosshair.GetComponent<Animator>().SetTrigger("Right");
            crosshair.transform.localRotation = Quaternion.Euler(Vector3.zero);
        }
        else
        {
        
            nozzle[Index].GetComponent<Animator>().SetTrigger("Left");
            crosshair.GetComponent<Animator>().SetTrigger("Left");
            crosshair.transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
        }
        for (int i = 0; i < 4; i++)
        {
            if (Index.Equals(i)) continue;
            if(nozzle[i].transform.localRotation.z > 0f)
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(Vector3.zero);
            }
            else
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
            }
        }
    }
    public GameObject GetCurrentWater()
    {
        return nozzle[Index].transform.GetChild(1).gameObject;
    }
    public GameObject GetCurrentStream()
    {
        return nozzle[Index].transform.GetChild(2).gameObject;
    }
}
