using UnityEngine;
using System.IO;
using System;
public class AmountManager
{
    public AmountData amountData { get; private set; }
    public string DirName = "Save";
    private string FileName = "Amount";

    // ������ �ʱ�ȭ
    public void InitializeMapData()
    {
        amountData = new AmountData(0);
        SaveMap();
    }

    // ������ ����
    public void SaveMap()
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
            Debug.Log("Data saved successfully.");
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }

    // ������ �ҷ�����
    public AmountData LoadData()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + ".json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                amountData = JsonUtility.FromJson<AmountData>(jsonData);
                Debug.Log("Data loaded successfully.");
            }
            catch (Exception e)
            {
                Debug.LogError("Failed to load data: " + e.Message);
                InitializeMapData(); // ������ �ε� ���� �� �ʱ�ȭ
            }
        }
        else
        {
            InitializeMapData(); // ����� �����Ͱ� ���� ��� �ʱ�ȭ
        }

        return amountData;
    }

    public void SaveAmount(float amount)
    {
        amountData = new AmountData(amount);
        SaveMap();
    }
    public float GetAmount()
    {
        return LoadData().Amount;
    }
}

