using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuButton : MonoBehaviour
{
    [SerializeField] private GameObject MainMenu;
    [SerializeField] private GameObject MenuShadow;
    [SerializeField] private GameObject Career_Btn;
    [SerializeField] private GameObject Special_Btn;
    [SerializeField] private GameObject Option_Btn;
    [SerializeField] private GameObject Continue_Btn;
    [SerializeField] private GameObject Freedom_Btn;
    [SerializeField] private GameObject Back_Btn;

    public void StageButton()
    {
        MainMenu.SetActive(false);
        Special_Btn.SetActive(false);
        Career_Btn.SetActive(false);
        Option_Btn.SetActive(false);
        MenuShadow.SetActive(true);
        Continue_Btn.SetActive(true);
        Freedom_Btn.SetActive(true);
        Back_Btn.SetActive(true);
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

}
