using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;

public class Shortcut_Key_Control : MonoBehaviour
{
    [SerializeField] private RectTransform shortcutE;
    [SerializeField] private RectTransform shortcutN;

    [SerializeField] private Toggle[] togglesE;
    [SerializeField] private Toggle[] togglesN;

    [SerializeField] private Text E_Name;
    [SerializeField] private Text N_Name;

    private bool key1 = false;
    private bool key2 = false;

    private int E_Select;
    private int N_Select;
    private int E_Temp;
    private int N_Temp;

    private string[] togglenames_E = { "æ¯¿Ω (Ω∫≈Õ∫Ò ∞«)", "µˆ ≈¨∏Æ≥  4000 ºÙ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  4000 ∑’ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  ø¢Ω∫∆Æ∂Û ∑’ »Æ¿Â±‚" };
    private string[] togglenames_N = { "0µµ ≥Î¡Ò", "15µµ ≥Î¡Ò", "25µµ ≥Î¡Ò", "40µµ ≥Î¡Ò" };

    [SerializeField] private GameObject[] selectedToggleE;
    [SerializeField] private GameObject[] selectedToggleN;

    private void Start()
    {
        Init();
    }

    private void Update()
    {

        if(Input.GetKey(KeyCode.Alpha1) && !key2)
        {
            key1 = true;
            selectedToggleE[E_Select].SetActive(true);
            shortcutE.DOScale(Vector3.one, 0.2f);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else if(Input.GetKey(KeyCode.Alpha2) && !key1)
        {
            key2 = true;
            selectedToggleN[N_Select].SetActive(true);
            shortcutN.DOScale(Vector3.one, 0.2f);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else if (Input.GetKeyUp(KeyCode.Alpha1))
        {
            key1 = false;
            shortcutE.DOScale(new Vector3(0, 0, 1), 0.2f);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            selectedToggleE[E_Select].SetActive(false);
            E_Select = E_Temp;
            togglesE[E_Select].isOn = true;
        }
        else if (Input.GetKeyUp(KeyCode.Alpha2))
        {
            key2 = false;
            shortcutN.DOScale(new Vector3(0, 0, 1), 0.2f);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            selectedToggleN[N_Select].SetActive(false);
            N_Select = N_Temp;
            togglesN[N_Select].isOn = true;
        }
    }

    public void OnPointerEnter(int index)
    {
        if (key1)
        {
            E_Temp = index;
            E_Name.text = togglenames_E[index];
        }
        else if (key2)
        {
            N_Temp = index;
            N_Name.text = togglenames_N[index];
        }
    }
    public void OnPointerExit()
    {
        if (key1)
        {
            E_Temp = E_Select;
            E_Name.text = togglenames_E[E_Select];
        }
        else if (key2)
        {
            N_Temp = N_Select;
            N_Name.text = togglenames_N[N_Select];
        }
    }

    private void Init()
    {
        E_Select = 0;
        N_Select = 0;
        E_Temp = E_Select;
        N_Temp = N_Select;
        E_Name.text = togglenames_E[E_Select];
        N_Name.text = togglenames_N[N_Select];
    }
}
