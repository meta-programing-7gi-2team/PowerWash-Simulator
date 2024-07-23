using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NozzleControl : MonoBehaviour,IObserver
{

    [SerializeField] private GameObject[] nozzle;
    [SerializeField] private Sprite[] crosshairImage;
    [SerializeField] private PlayerState playerState;
    private WashGunControl washGun;
    private Image crosshair;
    private float scroll;
    private State state;
    public int Index { get; private set; }
    private void OnEnable()
    {
        playerState.Register(this);
    }
    private void Start()
    {
        Index = 0;
        washGun = FindObjectOfType<WashGunControl>();
        crosshair = FindObjectOfType<Crosshair>().GetComponent<Image>();
        washGun.SetNozzleInfo(nozzle[Index].transform.GetChild(1).gameObject, nozzle[Index].transform.GetChild(2).gameObject);
    }

    private void Update()
    {
        if (UIManager.instance.isCursor) return;

        if (state.Equals(State.Hand) ||
            state.Equals(State.Run))
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
        washGun.SetNozzleInfo(nozzle[Index].transform.GetChild(1).gameObject, nozzle[Index].transform.GetChild(2).gameObject);
    }
    private void ScrollDown()
    {
        nozzle[Index].SetActive(false);
        Index--;
        Index = Index < 0 ? nozzle.Length - 1 : Index;
        nozzle[Index].SetActive(true);
        crosshair.sprite = crosshairImage[Index];
        crosshair.SetNativeSize();
        washGun.SetNozzleInfo(nozzle[Index].transform.GetChild(1).gameObject, nozzle[Index].transform.GetChild(2).gameObject);
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

    public void UpdateState(State state)
    {
        this.state = state;
    }
}
