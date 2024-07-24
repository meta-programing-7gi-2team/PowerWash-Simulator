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
        amount = GetAmount();
    }
    #region Amount
    public void InitializeAmount()
    {
        amountData = new AmountData(0);
        SaveAmount();
    }
    private void SaveAmount()
    {
        try
        {
            // JSON으로 직렬화하여 저장
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
                InitializeAmount(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeAmount(); // 저장된 데이터가 없을 경우 초기화
        }

        return amountData;
    }
    public void SetAmount(float amount)
    {
        amountData = new AmountData(amount);
        SaveAmount();
    }
    public float GetAmount()
    {
        LoadAmount();
        return amountData.Amount;
    }
    public void AddAmount(float amount)
    {
        this.amount += amount;
        SetAmount(this.amount);
    }
    #endregion
}
