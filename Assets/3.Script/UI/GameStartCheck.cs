using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameStartCheck : MonoBehaviour
{

    [SerializeField] private GameObject Pineapple_Btn;
    [SerializeField] private GameObject KrustyKrab_Btn;

    private void OnEnable()
    {
        Pineapple_Btn.SetActive(true);
        KrustyKrab_Btn.SetActive(true);
    }

    public void New()
    {
        
    }

    public void Continue()
    {
        
    }

    public void Completion()
    {

    }
}
