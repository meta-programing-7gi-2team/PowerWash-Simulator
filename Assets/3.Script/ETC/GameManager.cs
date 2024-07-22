using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance = null;
    public static Transform view;
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
    private void Update()
    {
        if(view == null)
        {
            view = Camera.main.transform;
        }
    }
}
