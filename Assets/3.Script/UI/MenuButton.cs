using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuButton : MonoBehaviour
{
    [SerializeField] private GameObject MainMenu;
    [SerializeField] private Animator FastManu;
    [SerializeField] private GameObject MenuShadow;
    [SerializeField] private GameObject GameSelectShadow;
    [SerializeField] private GameObject Career_Btn;
    [SerializeField] private GameObject Special_Btn;
    [SerializeField] private GameObject Option_Btn;
    [SerializeField] private GameObject Continue_Btn;
    [SerializeField] private GameObject Freedom_Btn;
    [SerializeField] private GameObject Back_Btn;
    [SerializeField] private GameObject Fast_Btn;
    [SerializeField] private GameObject FastClose_Btn;
    [SerializeField] private GameObject SetChoice_Toggle;
    [SerializeField] private GameObject Pineapple_Btn;
    [SerializeField] private GameObject KrustyKrab_Btn;

    private bool SpecialCheck;

    public void SpecialButton()
    {
        MainMenu.SetActive(false);
        Special_Btn.SetActive(false);
        Career_Btn.SetActive(false);
        Option_Btn.SetActive(false);
        MenuShadow.SetActive(true);
        Continue_Btn.SetActive(true);
        Freedom_Btn.SetActive(true);
        Back_Btn.SetActive(true);
        SpecialCheck = true;
    }

    public void BackButton()
    {
        MenuShadow.SetActive(false);
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        Back_Btn.SetActive(false);
        MainMenu.SetActive(true);
        Special_Btn.SetActive(true);
        Career_Btn.SetActive(true);
        Option_Btn.SetActive(true);
        SpecialCheck = false;
    }

    public void FastButton()
    {
        if(SpecialCheck)
        {
            Fast_Btn.SetActive(false);
            Back_Btn.SetActive(false);
            FastClose_Btn.SetActive(true);
            FastManu.SetTrigger("FastOpen");
        }
        else
        {
            Fast_Btn.SetActive(false);
            Option_Btn.SetActive(false);
            FastClose_Btn.SetActive(true);
            FastManu.SetTrigger("FastOpen");
        }
    }

    public void FastButtonClose()
    {
        if (SpecialCheck)
        {
            FastClose_Btn.SetActive(false);
            Fast_Btn.SetActive(true);
            Back_Btn.SetActive(true);
            FastManu.SetTrigger("FastClose");
        }
        else
        {
            FastClose_Btn.SetActive(false);
            Option_Btn.SetActive(true);
            Fast_Btn.SetActive(true);
            FastManu.SetTrigger("FastClose");
        }
    }

    public void ContinueButton()
    {
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        MenuShadow.SetActive(false);
        GameSelectShadow.SetActive(true);
        SetChoice_Toggle.SetActive(true);
        Pineapple_Btn.SetActive(true);
        KrustyKrab_Btn.SetActive(true);
    }
}
