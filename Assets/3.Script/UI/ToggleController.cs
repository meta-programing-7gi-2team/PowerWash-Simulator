using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToggleController : MonoBehaviour
{
    [SerializeField] private Toggle toggle1;
    [SerializeField] private Toggle toggle2;
    [SerializeField] private GameObject D_nformation;
    private Text toggle1Text;
    private Text toggle2Text;

    [SerializeField] private Information_Control information;
    [SerializeField] private AmountManager amountManager;
    [SerializeField] private GameObject Information;
    [SerializeField] private GameObject Start_Btn;

    [SerializeField] private Color SelectedColor = new Color(1, 1, 1, 1);
    [SerializeField] private Color DeselectedColor = new Color(0.08f, 0.56f, 1);

    private void Start()
    {
        toggle1Text = toggle1.GetComponentInChildren<Text>();
        toggle2Text = toggle2.GetComponentInChildren<Text>();

        toggle1.onValueChanged.AddListener(delegate { ChangeTextColor(toggle1, toggle1Text); });
        toggle2.onValueChanged.AddListener(delegate { ChangeTextColor(toggle2, toggle2Text); });
    }

    public void ChangeTextColor(Toggle toggle, Text toggleText)
    {
        if (toggle.isOn)
        {
            toggleText.color = SelectedColor;
        }
        else
        {
            toggleText.color = DeselectedColor;
        }
    }

    public void OutLine_T()
    {
        if(UIManager.instance.Mapname.Equals("Map001"))
        {
            D_nformation.SetActive(false);
            Information.SetActive(true);
            Start_Btn.SetActive(true);
            information.Info_Map001();
        }
        else
        {
            D_nformation.SetActive(false);
            Information.SetActive(true);
            Start_Btn.SetActive(true);
            information.Info_Map002();
        }
    }

    public void Detailed_T()
    {
        if (UIManager.instance.Mapname.Equals("Map001"))
        {
            Information.SetActive(false);
            Start_Btn.SetActive(false);
            D_nformation.SetActive(true);
            amountManager.Init();
        }
        else
        {
            Information.SetActive(false);
            Start_Btn.SetActive(false);
            D_nformation.SetActive(true);
            amountManager.Init();
        }
    }
}
