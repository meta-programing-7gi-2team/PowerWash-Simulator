using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManage : MonoBehaviour
{
    public static GameManage instance = null;
    public string DriName = "Save";
    public string FileName = "money";
    private MoneyManager moneyManager;
    private float money;
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
        moneyManager = new MoneyManager();
        money = moneyManager.GetMoney();
    }
    public float GetMoney()
    {
        return money;
    }
    public void AddMoney(float money)
    {
        this.money += money;
        moneyManager.SaveMoney(this.money);
    }
}
