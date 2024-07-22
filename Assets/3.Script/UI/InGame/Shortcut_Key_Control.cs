using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Shortcut_Key_Control : MonoBehaviour
{
    
    [SerializeField] private Image menuicon;
    [SerializeField] private Text menuname;
    [SerializeField] private Text togglename;

    [SerializeField] private GameObject Shortcut;


    /*
    [Header("확장기")]
    [SerializeField] private ToggleController E_toggle1;
    [SerializeField] private ToggleController E_toggle2;
    [SerializeField] private ToggleController E_toggle3;
    [SerializeField] private ToggleController E_toggle4;

    [Header("노즐")]
    [SerializeField] private ToggleController N_toggle1;
    [SerializeField] private ToggleController N_toggle2;
    [SerializeField] private ToggleController N_toggle3;
    [SerializeField] private ToggleController N_toggle4;

    [SerializeField] private Color StartColor = Color.white;
    */

    private void Start()
    {
        
    }

    private void Update()
    {
        ActiveShortcut();
    }

    private void ActiveShortcut()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Shortcut.SetActive(true);
            menuname.text = "확장기";
        }

        if (Input.GetKeyDown(KeyCode.Alpha2))
        {

        }
    }

}
