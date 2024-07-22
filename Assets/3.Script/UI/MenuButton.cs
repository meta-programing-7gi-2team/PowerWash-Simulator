using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

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
    [SerializeField] private GameObject GameBack_Btn;
    [SerializeField] private GameObject Fast_Btn;
    [SerializeField] private GameObject FastClose_Btn;
    [SerializeField] private GameObject SetChoice_Toggle;
    [SerializeField] private GameObject Pineapple_Btn;
    [SerializeField] private GameObject KrustyKrab_Btn;
    [SerializeField] private Animator FastShop_Btn;
    [SerializeField] private Animator FastCareer_Btn;
    [SerializeField] private Animator FastSpecial_Btn;
    [SerializeField] private Animator FastOption_Btn;
    [SerializeField] private Animator FastMain_Btn;
    [SerializeField] private Animator FastQuit_Btn;

    [SerializeField] private GameObject Info;
    [SerializeField] private GameObject D_Info;

    private bool FastCheck;

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

        if(FastCheck.Equals(true))
        {
            FastClose_Btn.SetActive(false);
            Fast_Btn.SetActive(true);
            FastManu.SetTrigger("FastClose");
            FastShop_Btn.SetTrigger("FastClose");
            FastCareer_Btn.SetTrigger("FastClose");
            FastSpecial_Btn.SetTrigger("FastClose");
            FastOption_Btn.SetTrigger("FastClose");
            FastMain_Btn.SetTrigger("FastClose");
            FastQuit_Btn.SetTrigger("FastClose");
            FastCheck = false;
        }
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
    }

    public void FastButton()
    {
        Fast_Btn.SetActive(false);
        FastClose_Btn.SetActive(true);
        FastManu.SetTrigger("FastOpen");
        FastShop_Btn.SetTrigger("FastOpen");
        FastCareer_Btn.SetTrigger("FastOpen");
        FastSpecial_Btn.SetTrigger("FastOpen");
        FastOption_Btn.SetTrigger("FastOpen");
        FastMain_Btn.SetTrigger("FastOpen");
        FastQuit_Btn.SetTrigger("FastOpen");
        FastCheck = true;
    }

    public void FastButtonClose()
    {
        FastClose_Btn.SetActive(false);
        Fast_Btn.SetActive(true);
        FastManu.SetTrigger("FastClose");
        FastShop_Btn.SetTrigger("FastClose");
        FastCareer_Btn.SetTrigger("FastClose");
        FastSpecial_Btn.SetTrigger("FastClose");
        FastOption_Btn.SetTrigger("FastClose");
        FastMain_Btn.SetTrigger("FastClose");
        FastQuit_Btn.SetTrigger("FastClose");
        FastCheck = false;
    }

    public void ContinueButton()
    {
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        MenuShadow.SetActive(false);
        Back_Btn.SetActive(false);
        GameSelectShadow.SetActive(true);
        GameBack_Btn.SetActive(true);
        SetChoice_Toggle.SetActive(true);
        Pineapple_Btn.SetActive(true);
        KrustyKrab_Btn.SetActive(true);

        if (FastCheck.Equals(true))
        {
            FastClose_Btn.SetActive(false);
            Fast_Btn.SetActive(true);
            FastManu.SetTrigger("FastClose");
            FastShop_Btn.SetTrigger("FastClose");
            FastCareer_Btn.SetTrigger("FastClose");
            FastSpecial_Btn.SetTrigger("FastClose");
            FastOption_Btn.SetTrigger("FastClose");
            FastMain_Btn.SetTrigger("FastClose");
            FastQuit_Btn.SetTrigger("FastClose");
            FastCheck = false;
        }
    }

    public void GameBackButton()
    {
        GameSelectShadow.SetActive(false);
        GameBack_Btn.SetActive(false);
        SetChoice_Toggle.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);
        Continue_Btn.SetActive(true);
        Freedom_Btn.SetActive(true);
        MenuShadow.SetActive(true);
        Back_Btn.SetActive(true);
    }

    public void Disabled()
    {
        EventSystem.current.SetSelectedGameObject(null);
    }

    public void GameExit()
    {
        #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
        #endif

        Application.Quit();
    }
}
