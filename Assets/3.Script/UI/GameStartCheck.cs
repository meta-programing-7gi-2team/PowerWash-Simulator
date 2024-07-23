using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameStartCheck : MonoBehaviour
{

    [SerializeField] private GameObject Pineapple_Btn;
    [SerializeField] private GameObject KrustyKrab_Btn;

    private void OnEnable()
    {
        if(UIManager.instance.Map001.Equals(true))
        {
            Pineapple_Btn.SetActive(false);
        }
        else
        {
            Pineapple_Btn.SetActive(true);
        }

        if(UIManager.instance.Map002.Equals(true))
        {
            KrustyKrab_Btn.SetActive(false);
        }
        else
        {
            if (UIManager.instance.Map001.Equals(true))
            {
                KrustyKrab_Btn.transform.position = new Vector3(573, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
            else
            {
                KrustyKrab_Btn.SetActive(true);
            }
        }
    }

    public void New()
    {
        if (UIManager.instance.Map001.Equals(true))
        {
            Pineapple_Btn.SetActive(false);
        }
        else
        {
            Pineapple_Btn.SetActive(true);
        }

        if (UIManager.instance.Map002.Equals(true))
        {
            KrustyKrab_Btn.SetActive(false);
        }
        else
        {
            if (UIManager.instance.Map001.Equals(true))
            {
                KrustyKrab_Btn.transform.position = new Vector3(573, 558, 0);
                KrustyKrab_Btn.SetActive(true);
            }
            else
            {
                KrustyKrab_Btn.SetActive(true);
            }
        }
    }

    public void Continue()
    {
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);

        if (UIManager.instance.Map001.Equals(true))
        {
            Pineapple_Btn.SetActive(true);
        }
    }

    public void Completion()
    {

    }
}
