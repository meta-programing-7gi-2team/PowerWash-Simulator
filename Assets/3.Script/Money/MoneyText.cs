using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MoneyText : MonoBehaviour
{
    [SerializeField] Text moneyTxt;
    private void OnEnable()
    {
        moneyTxt.text = GameManager.instance.GetAmount().ToString("$0.00");
    }
}
