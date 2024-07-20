using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManage : MonoBehaviour
{
    public static GameManage instance = null;
    public string DriName = "Save";
    public string FileName = "Amount";
    private AmountManager amountManager;
    private float amount;
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
        Init();
    }
    private void Init()
    {
        amountManager = new AmountManager();
        amount = amountManager.GetAmount();
    }
    public float GetAmount()
    {
        return amount;
    }
    public void AddAmount(float amount)
    {
        this.amount += amount;
        amountManager.SaveAmount(this.amount);
    }
}
