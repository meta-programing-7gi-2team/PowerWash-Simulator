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

    [SerializeField] private Toggle[] toggles;
    [SerializeField] private Toggle[] togglesE;
    [SerializeField] private Toggle[] togglesN;
    [SerializeField] private GameObject[] toggleSprites;

    [SerializeField] private Text togglename;

    [SerializeField] private bool key1 = false;
    [SerializeField] private bool key2 = false;

    [SerializeField] private int E_toggleSelect;
    [SerializeField] private int N_toggleSelect;

    private string[] togglenames_1 = { "æ¯¿Ω (Ω∫≈Õ∫Ò ∞«)", "µˆ ≈¨∏Æ≥  4000 ºÙ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  4000 ∑’ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  ø¢Ω∫∆Æ∂Û ∑’ »Æ¿Â±‚" };
    private string[] togglenames_2 = { "0µµ ≥Î¡Ò", "15µµ ≥Î¡Ò", "25µµ ≥Î¡Ò", "40µµ ≥Î¡Ò" };

    private void Start()
    {
        foreach (var toggle in toggles)
        {
            toggle.onValueChanged.AddListener(delegate { ToggleValueChanged(toggle); });
        }

        HideAllSprites();
        SetTextToSelectedToggle();
    }

    private void Update()
    {
        if(Input.GetKey(KeyCode.Alpha1) && !key2)
        {
            key1 = true;
            shortcutE.DOScale(Vector3.one, 0.2f);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else if(Input.GetKey(KeyCode.Alpha2) && !key1)
        {
            key2 = true;
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
        }
        else if (Input.GetKey(KeyCode.Alpha2))
        {
            key2 = false;
            shortcutN.DOScale(new Vector3(0, 0, 1), 0.2f);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }

        else if (Input.GetKey(KeyCode.Alpha1) || Input.GetKey(KeyCode.Alpha2))
        {

            ActiveShortcut();
        }
    }

    private void ActiveShortcut()
    {
        if(Input.GetKeyDown(KeyCode.Alpha1) && key1)
        {
            toggles[E_toggleSelect].isOn = true;
            key1 = false;
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && key2)
        {
            toggles[N_toggleSelect].isOn = true;
            key2 = false;
        }
     
    }

    public void OnPointerEnter(int index)
    {
        if (toggles[index].isOn) return;

        ShowSprite(index);

        if (Input.GetKey(KeyCode.Alpha1))
        {
            E_toggleSelect = index;
            togglename.text = togglenames_1[index];
        }

        if (Input.GetKey(KeyCode.Alpha2))
        {
            N_toggleSelect = index;
            togglename.text = togglenames_2[index];
        }

    }

    public void OnPointerExit(int index)
    {
        if (toggles[index].isOn) return;

        HideSprite(index);
        SetTextToSelectedToggle();
    }

    private void ToggleValueChanged(Toggle changedToggle)
    {
        if (changedToggle.isOn)
        {
            SetTextToSelectedToggle();
        }
    }

    private void ShowSprite(int index)
    {
        HideAllSprites();
        toggleSprites[index].SetActive(true);
    }

    private void HideSprite(int index)
    {
        toggleSprites[index].SetActive(false);
    }

    private void HideAllSprites()
    {
        foreach (var sprite in toggleSprites)
        {
            sprite.SetActive(false);
        }
    }

    private void SetTextToSelectedToggle()
    {
        for (int i = 0; i < toggles.Length; i++)
        {
            if (toggles[i].isOn)
            {
                if (Input.GetKey(KeyCode.Alpha1))
                {
                    togglename.text = togglenames_1[E_toggleSelect];
                }

                if (Input.GetKey(KeyCode.Alpha2))
                {
                    togglename.text = togglenames_2[N_toggleSelect];
                }
                break;
            }
        }
    }
}
