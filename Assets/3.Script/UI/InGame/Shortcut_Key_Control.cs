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

    [SerializeField] private Color SelectedColor = new Color(1, 1, 1, 1);

    private string[] togglenames_1 = { "���� (���ͺ� ��)", "�� Ŭ���� 4000 �� Ȯ���", "�� Ŭ���� 4000 �� Ȯ���", "�� Ŭ���� ����Ʈ�� �� Ȯ���" };
    private string[] togglenames_2 = { "0�� ����", "15�� ����", "25�� ����", "40�� ����" };

    private void Start()
    {
        foreach (var toggle in toggles)
        {
            toggle.onValueChanged.AddListener(delegate { ToggleValueChanged(toggle); });
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
        else if(Input.GetKeyUp(KeyCode.Alpha1) || Input.GetKeyUp(KeyCode.Alpha2))
        {
            Ob_Back.SetActive(false);
        }
    }

    private void ActiveShortcut()
    {
        if (Input.GetKey(KeyCode.Alpha1))
        {
            //menuicon.sprite = icon_Img[index];
            menuname.text = "Ȯ���";
        }

        if (Input.GetKey(KeyCode.Alpha2))
        {
            //menuicon.sprite = icon_Img[index];
            menuname.text = "����";
        }
    }

    public void OnPointerEnter(int index)
    {
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

    private void SetInitialText()
    {
        SetTextToSelectedToggle();
    }
}
