using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;

public class GameManager : MonoBehaviour
{
    public static GameManager instance = null;
    private AmountManager amountManager;
    public AmountData amountData { get; private set; }
    private float amount;

    private string DirName = DefaultName.DirName;
    private string FileName = DefaultName.AmountFileName;

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
        LoadAmount();
        amount = GetAmount();
        amountManager = FindObjectOfType<AmountManager>();
    }
    #region Amount
    public void InitializeAmount()
    {
        amountData = new AmountData(0);
        SaveAmount();
    }
    public void SaveAmount()
    {
        try
        {
            // JSON���� ����ȭ�Ͽ� ����
            string jsonData = JsonUtility.ToJson(amountData, true);

            string dirName = Path.Combine(Application.dataPath, DirName);
            if (!Directory.Exists(dirName))
            {
                Directory.CreateDirectory(dirName);
            }
            File.WriteAllText(Path.Combine(Application.dataPath, DirName, FileName + ".json"), jsonData);
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }
    private AmountData LoadAmount()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + ".json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                amountData = JsonUtility.FromJson<AmountData>(jsonData);
            }
            catch (Exception e)
            {
                Debug.LogError("Failed to load data: " + e.Message);
                InitializeAmount(); // ������ �ε� ���� �� �ʱ�ȭ
            }
        }
        else
        {
            InitializeAmount(); // ����� �����Ͱ� ���� ��� �ʱ�ȭ
        }

        return amountData;
    }
    public float GetAmount()
    {
        return amountData.Amount;
    }
    public void AddAmount(float amount)
    {
        this.amount += amount;
        amountData = new AmountData(amount);
    }
    #endregion
}
