using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonColor : MonoBehaviour
{
    public Toggle toggle;
    public Text text;

    public Color DeselectedColor = new Color(22, 145, 255);

    private void Start()
    {
        toggle.onValueChanged.AddListener(ChangeTextColor);
        ChangeTextColor(toggle.isOn);
    }

    public void ChangeTextColor(bool isOn)
    {
        if (isOn)
        {
            text.color = Color.white;
        }
        else
        {
            text.color = DeselectedColor;
        }
    }

    private void OnDestroy()
    {
        toggle.onValueChanged.RemoveListener(ChangeTextColor);
    }
}
