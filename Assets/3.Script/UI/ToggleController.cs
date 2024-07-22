using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToggleController : MonoBehaviour
{
    [SerializeField] private Toggle toggle1;
    [SerializeField] private Toggle toggle2;
    private Text toggle1Text;
    private Text toggle2Text;

    [SerializeField] private Color SelectedColor = new Color(255, 255, 255);
    [SerializeField] private Color DeselectedColor = new Color(22, 145, 255);

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
}
