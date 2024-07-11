using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NozzleReplacement : MonoBehaviour
{

    [SerializeField] private GameObject[] nozzle;

    private int index = 0;

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
    }

    private void ScrollUp()
    {
        nozzle[index].SetActive(false);

        index++;
        index = index >= nozzle.Length ? 0 : index;

        nozzle[index].SetActive(true);
    }
    private void ScrollDown()
    {
        nozzle[index].SetActive(false);

        index--;
        index = index < 0 ? nozzle.Length - 1 : index;

        nozzle[index].SetActive(true);
    }
   
    public GameObject GetCurrentActiveWaterParticle()
    {
        return nozzle[index].transform.GetChild(1).gameObject;
    }
    
}
