using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class Shortcut_Key_Control : MonoBehaviour
{
    [SerializeField] private GameObject Ob_Back;

    [SerializeField] private ToggleGroup toggleGroup;
    [SerializeField] private Toggle[] toggles;
    [SerializeField] private GameObject[] toggleSprites;

    [SerializeField] private Image menuicon;
    [SerializeField] private Text menuname;
    [SerializeField] private Text togglename;

    [SerializeField] private Sprite[] icon_Img;
    [SerializeField] private GameObject[] E_toggleImg;
    [SerializeField] private GameObject[] N_toggleImg;

    [SerializeField] private Color SelectedColor = new Color(1, 1, 1, 1);

    private string[] togglenames_1 = { "æ¯¿Ω (Ω∫≈Õ∫Ò ∞«)", "µˆ ≈¨∏Æ≥  4000 ºÙ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  4000 ∑’ »Æ¿Â±‚", "µˆ ≈¨∏Æ≥  ø¢Ω∫∆Æ∂Û ∑’ »Æ¿Â±‚" };
    private string[] togglenames_2 = { "0µµ ≥Î¡Ò", "15µµ ≥Î¡Ò", "25µµ ≥Î¡Ò", "40µµ ≥Î¡Ò" };

    private void Start()
    {
        foreach (var toggle in toggles)
        {
            toggle.onValueChanged.AddListener(delegate { ToggleValueChanged(toggle); });

            EventTrigger trigger = toggle.gameObject.AddComponent<EventTrigger>();

            EventTrigger.Entry entryEnter = new EventTrigger.Entry();
            entryEnter.eventID = EventTriggerType.PointerEnter;
            entryEnter.callback.AddListener((data) => { OnPointerEnter(System.Array.IndexOf(toggles, toggle)); });
            trigger.triggers.Add(entryEnter);

            EventTrigger.Entry entryExit = new EventTrigger.Entry();
            entryExit.eventID = EventTriggerType.PointerExit;
            entryExit.callback.AddListener((data) => { OnPointerExit(System.Array.IndexOf(toggles, toggle)); });
            trigger.triggers.Add(entryExit);
        }

        HideAllSprites();
        SetInitialText();
    }

    private void Update()
    {
        if (Input.GetKey(KeyCode.Alpha1) || Input.GetKey(KeyCode.Alpha2))
        {
            Ob_Back.SetActive(true);

            ActiveShortcut();
        }
        
        
        if(Input.GetKeyUp(KeyCode.Alpha1) || Input.GetKeyUp(KeyCode.Alpha2))
        {
            Ob_Back.SetActive(false);

            for (int i = 0; i < E_toggleImg.Length; i++)
            {
                if (E_toggleImg[i] != null)
                {
                    E_toggleImg[i].SetActive(false);
                }
            }

            for (int i = 0; i < N_toggleImg.Length; i++)
            {
                if (N_toggleImg[i] != null)
                {
                    N_toggleImg[i].SetActive(false);
                }
            }
        }
    }

    private void ActiveShortcut()
    {
        if (Input.GetKey(KeyCode.Alpha1))
        {
            menuicon.sprite = icon_Img[0];
            menuname.text = "»Æ¿Â±‚";

            for (int i = 0; i < E_toggleImg.Length; i++)
            {
                if (E_toggleImg[i] != null)
                {
                    E_toggleImg[i].SetActive(true);
                }
            }
        }

        if (Input.GetKey(KeyCode.Alpha2))
        {
            menuicon.sprite = icon_Img[1];
            menuname.text = "≥Î¡Ò";

            for (int i = 0; i < N_toggleImg.Length; i++)
            {
                if (N_toggleImg[i] != null)
                {
                    N_toggleImg[i].SetActive(true);
                }
            }
        }
    }

    public void OnPointerEnter(int index)
    {
        if (toggles[index].isOn) return;

        ShowSprite(index);

        if (Input.GetKey(KeyCode.Alpha1))
        {
            togglename.text = togglenames_1[index];
        }

        if (Input.GetKey(KeyCode.Alpha2))
        {
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
                    togglename.text = togglenames_1[i];
                }

                if (Input.GetKey(KeyCode.Alpha2))
                {
                    togglename.text = togglenames_2[i];
                }
                break;
            }
        }
    }

    private void ToggleSetFunction()
    {
        Vector2 cursorPosition = Input.mousePosition;

    }

    private void SetInitialText()
    {
        SetTextToSelectedToggle();
    }
}
