using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
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
    [SerializeField] private GameObject GameBack_Btn_Pine;
    [SerializeField] private GameObject GameBack_Btn_Krusty;
    [SerializeField] private GameObject Option_Menu;
    [SerializeField] private GameObject MenuBack_Btn;
    [SerializeField] private Text MenuName_Txt;

    [SerializeField] private GameObject Info_Toggle;
    [SerializeField] private Toggle OutLine_Toggle;
    [SerializeField] private GameObject Info;
    [SerializeField] private GameObject D_Info;
    [SerializeField] private GameObject Start_Btn;

    [SerializeField] private Information_Control information;
    private bool FastCheck;

    public void SpecialButton()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        MainMenu.SetActive(false);
        Special_Btn.SetActive(false);
        Career_Btn.SetActive(false);
        Option_Btn.SetActive(false);
        SetChoice_Toggle.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);
        GameBack_Btn.SetActive(false);
        GameBack_Btn_Pine.SetActive(false);
        GameBack_Btn_Krusty.SetActive(false);
        Info_Toggle.SetActive(false);
        Info.SetActive(false);
        D_Info.SetActive(false);
        Start_Btn.SetActive(false);
        Option_Menu.SetActive(false);
        MenuBack_Btn.SetActive(false);

        MenuShadow.SetActive(true);
        Continue_Btn.SetActive(true);
        Freedom_Btn.SetActive(true);
        Back_Btn.SetActive(true);

        if (FastCheck.Equals(true))
        {
            AudioManager.instance.PlaySFX_UI("FastMenu_Close");
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

    public void F_MenuButton()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        SetChoice_Toggle.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);
        GameBack_Btn.SetActive(false);
        GameBack_Btn_Pine.SetActive(false);
        GameBack_Btn_Krusty.SetActive(false);
        Info_Toggle.SetActive(false);
        Info.SetActive(false);
        D_Info.SetActive(false);
        Start_Btn.SetActive(false);
        MenuShadow.SetActive(false);
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        Back_Btn.SetActive(false);
        Option_Menu.SetActive(false);
        MenuBack_Btn.SetActive(false);

        MainMenu.SetActive(true);
        Special_Btn.SetActive(true);
        Career_Btn.SetActive(true);
        Option_Btn.SetActive(true);

        if (FastCheck.Equals(true))
        {
            AudioManager.instance.PlaySFX_UI("FastMenu_Close");
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
        AudioManager.instance.PlaySFX_UI("Btn_Click");
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
        AudioManager.instance.PlaySFX_UI("FastMenu_Open");
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
        AudioManager.instance.PlaySFX_UI("FastMenu_Close");
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
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        MenuShadow.SetActive(false);
        Back_Btn.SetActive(false);
        Option_Menu.SetActive(false);
        MenuBack_Btn.SetActive(false);

        GameSelectShadow.SetActive(true);
        GameBack_Btn.SetActive(true);
        SetChoice_Toggle.SetActive(true);

        if (FastCheck.Equals(true))
        {
            AudioManager.instance.PlaySFX_UI("FastMenu_Close");
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
        AudioManager.instance.PlaySFX_UI("Btn_Click");
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
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        EventSystem.current.SetSelectedGameObject(null);
    }

    public void GameExit()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        StartCoroutine(UIManager.instance.GameExitSave());
    }

    public void Pineapple_Btu()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        GameSelectShadow.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);
        SetChoice_Toggle.SetActive(false);
        GameBack_Btn.SetActive(false);
        Info_Toggle.SetActive(true);
        Info.SetActive(true);
        Start_Btn.SetActive(true);
        GameBack_Btn_Pine.SetActive(true);
        OutLine_Toggle.isOn = true;
        UIManager.instance.Mapname = "Map001";
        information.Info_Map001();
    }

    public void KrustyKrab_Btu()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        GameSelectShadow.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);
        SetChoice_Toggle.SetActive(false);
        GameBack_Btn.SetActive(false);
        Info_Toggle.SetActive(true);
        Info.SetActive(true);
        Start_Btn.SetActive(true);
        GameBack_Btn_Krusty.SetActive(true);
        OutLine_Toggle.isOn = true;
        UIManager.instance.Mapname = "Map002";
        information.Info_Map002();
    }

    public void GameBack_Pine()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        Info_Toggle.SetActive(false);
        Info.SetActive(false);
        Start_Btn.SetActive(false);
        D_Info.SetActive(false);
        GameBack_Btn_Pine.SetActive(false);
        GameBack_Btn.SetActive(true);
        GameSelectShadow.SetActive(true);
        SetChoice_Toggle.SetActive(true);
        UIManager.instance.Mapname = "Main";
    }

    public void GameBack_Krusty()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        Info_Toggle.SetActive(false);
        Info.SetActive(false);
        Start_Btn.SetActive(false);
        D_Info.SetActive(false);
        GameBack_Btn_Krusty.SetActive(false);
        GameBack_Btn.SetActive(true);
        GameSelectShadow.SetActive(true);
        SetChoice_Toggle.SetActive(true);
        UIManager.instance.Mapname = "Main";
    }

    public void Option_Button()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        Option_Btn.SetActive(false);
        MainMenu.SetActive(false);
        Career_Btn.SetActive(false);
        Special_Btn.SetActive(false);
        GameSelectShadow.SetActive(false);
        GameBack_Btn.SetActive(false);
        SetChoice_Toggle.SetActive(false);
        MenuShadow.SetActive(false);
        Continue_Btn.SetActive(false);
        Freedom_Btn.SetActive(false);
        Back_Btn.SetActive(false);
        MainMenu.SetActive(false);
        Special_Btn.SetActive(false);
        Career_Btn.SetActive(false);
        Option_Btn.SetActive(false);
        Pineapple_Btn.SetActive(false);
        KrustyKrab_Btn.SetActive(false);

        Option_Menu.SetActive(true);
        MenuBack_Btn.SetActive(true);
        MenuName_Txt.text = "可记";

        if (FastCheck.Equals(true))
        {
            AudioManager.instance.PlaySFX_UI("FastMenu_Close");
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

    public void MenuBack_Button()
    {
        AudioManager.instance.PlaySFX_UI("Btn_Click");
        Option_Btn.SetActive(true);
        MainMenu.SetActive(true);
        Career_Btn.SetActive(true);
        Special_Btn.SetActive(true);
        Option_Menu.SetActive(false);
        MenuBack_Btn.SetActive(false);
        MenuName_Txt.text = "目府绢 累诀 技何 沥焊";
    }
}
