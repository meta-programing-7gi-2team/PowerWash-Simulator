using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NozzleControl : MonoBehaviour
{

    [SerializeField] private GameObject[] nozzle;
    [SerializeField] private Sprite[] crosshairImage;
    [SerializeField] private Image crosshair;

    private PlayerState playerState;
    private int cur = 0;

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
    }

    private void Update()
    {
        if (playerState.state.Equals(State.Hand) ||
            playerState.state.Equals(State.Run))
            return;

        float scroll = Input.GetAxis("Mouse ScrollWheel");
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
        nozzle[cur].SetActive(false);
        cur++;
        cur = cur >= nozzle.Length ? 0 : cur;
        nozzle[cur].SetActive(true);
        crosshair.sprite = crosshairImage[cur];
        crosshair.SetNativeSize();
    }
    private void ScrollDown()
    {
        nozzle[cur].SetActive(false);
        cur--;
        cur = cur < 0 ? nozzle.Length - 1 : cur;
        nozzle[cur].SetActive(true);
        crosshair.sprite = crosshairImage[cur];
        crosshair.SetNativeSize();
    }
    private void Rotate()
    {
        if (nozzle[cur].transform.localRotation.z > 0f)
        {
            nozzle[cur].GetComponent<Animator>().SetTrigger("Right");
            crosshair.GetComponent<Animator>().SetTrigger("Right");
        }
        else
        {
            nozzle[cur].GetComponent<Animator>().SetTrigger("Left");
            crosshair.GetComponent<Animator>().SetTrigger("Left");
        }
        for (int i = 0; i < 4; i++)
        {
            if (cur.Equals(i)) continue;
            if(nozzle[i].transform.localRotation.z > 0f)
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(Vector3.zero);
                crosshair.transform.localRotation = Quaternion.Euler(Vector3.zero);
            }
            else
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
                crosshair.transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
            }
        }
    }
    public GameObject GetCurrentWater()
    {
        return nozzle[cur].transform.GetChild(1).gameObject;
    }
    public GameObject GetCurrentStream()
    {
        return nozzle[cur].transform.GetChild(2).gameObject;
    }
}
