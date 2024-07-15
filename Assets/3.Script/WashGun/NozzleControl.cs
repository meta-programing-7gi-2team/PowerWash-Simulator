using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NozzleControl : MonoBehaviour
{

    [SerializeField] private GameObject[] nozzle;
    [SerializeField] private GameObject[] crosshair;

    [SerializeField] private int cur = 0;

    private void Update()
    {
        float scroll = Input.GetAxis("Mouse ScrollWheel");
        if(scroll > 0)
        {
            ScrollUp();
        }
        else if(scroll < 0)
        {
            ScrollDown();
        }
        if (Input.GetKeyDown(KeyCode.R) && cur < 4)
        {
            Rotate();
        }
    }

    private void ScrollUp()
    {
        nozzle[cur].SetActive(false);
        crosshair[cur].SetActive(false);
        cur++;
        cur = cur >= nozzle.Length ? 0 : cur;
        nozzle[cur].SetActive(true);
        crosshair[cur].SetActive(true);
    }
    private void ScrollDown()
    {
        nozzle[cur].SetActive(false);
        crosshair[cur].SetActive(false);
        cur--;
        cur = cur < 0 ? nozzle.Length - 1 : cur;
        nozzle[cur].SetActive(true);
        crosshair[cur].SetActive(true);
    }
    private void Rotate()
    {
        if (nozzle[cur].transform.localRotation.z > 0f)
        {
            nozzle[cur].GetComponent<Animator>().SetTrigger("Right");
            crosshair[cur].GetComponent<Animator>().SetTrigger("Right");
        }
        else
        {
            nozzle[cur].GetComponent<Animator>().SetTrigger("Left");
            crosshair[cur].GetComponent<Animator>().SetTrigger("Left");
        }
        for (int i = 0; i < 4; i++)
        {
            if (cur.Equals(i)) continue;
            if(nozzle[i].transform.localRotation.z > 0f)
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(Vector3.zero);
                crosshair[i].transform.localRotation = Quaternion.Euler(Vector3.zero);
            }
            else
            {
                nozzle[i].transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
                crosshair[i].transform.localRotation = Quaternion.Euler(new Vector3(0, 0, 90f));
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
