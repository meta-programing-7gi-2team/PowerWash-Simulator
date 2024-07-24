using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameStartCheck : MonoBehaviour
{

    [SerializeField] private GameObject Pineapple_Btn;
    [SerializeField] private GameObject KrustyKrab_Btn;
    [SerializeField] private Toggle Toggle_New;
    [SerializeField] private Toggle Toggle_Continue;
    private AmountManager amountManager;
    Process process_map1;
    Process process_map2;

    private void OnEnable()
    {
        amountManager = FindObjectOfType<AmountManager>();

        amountManager.GetMap001();
        amountManager.GetMap002();

        process_map1 = amountManager.Map001_ProcessData.process;
        process_map2 = amountManager.Map002_ProcessData.process;

        if (Toggle_New.isOn)
        {
            New();
        }
        else if(Toggle_Continue.isOn)
        {
            Continue();
        }
        else
        {
            Completion();
        }
    }

    public void New()
    {
        if (process_map1.Equals(Process.New))
        {
            Pineapple_Btn.SetActive(true);
        }
        else
        {
            Pineapple_Btn.SetActive(false);
        }

        if (process_map2.Equals(Process.New))
        {
            if (process_map1.Equals(Process.New))
            {
                KrustyKrab_Btn.transform.position = new Vector3(1356, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
            else
            {
                KrustyKrab_Btn.transform.position = new Vector3(573, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
        }
        else
        {
            KrustyKrab_Btn.SetActive(false);
        }
    }

    public void Continue()
    {
        if (process_map1.Equals(Process.Proceeding))
        {
            Pineapple_Btn.SetActive(true);
        }
        else
        {
            Pineapple_Btn.SetActive(false);
        }

        if(process_map2.Equals(Process.Proceeding))
        {
            if(!process_map1.Equals(Process.Proceeding))
            {
                KrustyKrab_Btn.transform.position = new Vector3(573, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
            else
            {
                KrustyKrab_Btn.transform.position = new Vector3(1356, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
        }
        else
        {
            KrustyKrab_Btn.SetActive(false);
        }
    }

    public void Completion()
    {
        if(process_map1.Equals(Process.Complete))
        {
            Pineapple_Btn.SetActive(true);
        }
        else
        {
            Pineapple_Btn.SetActive(false);
        }

        if(process_map2.Equals(Process.Complete))
        {
            if (!process_map1.Equals(Process.Complete))
            {
                KrustyKrab_Btn.transform.position = new Vector3(573, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
            else
            {
                KrustyKrab_Btn.transform.position = new Vector3(1356, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
        }
        else
        {
            KrustyKrab_Btn.SetActive(false);
        }
    }
}
