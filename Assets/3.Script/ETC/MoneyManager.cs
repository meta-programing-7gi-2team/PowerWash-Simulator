using UnityEngine;
using System.IO;
using System;
public class MoneyManager
{
    public MoneyData moneyData { get; private set; }
    public string DirName = "Save";
    private string FileName = "money";

    // ������ �ʱ�ȭ
    public void InitializeMapData()
    {
        moneyData = new MoneyData(0);
        SaveMap();
    }

    // ������ ����
    public void SaveMap()
    {
        try
        {
            // JSON���� ����ȭ�Ͽ� ����
            string jsonData = JsonUtility.ToJson(moneyData, true);

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
    public MoneyData LoadData()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + ".json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                moneyData = JsonUtility.FromJson<MoneyData>(jsonData);
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

        return moneyData;
    }

    public void SaveMoney(float money)
    {
        moneyData = new MoneyData(money);
        SaveMap();
    }
    public float GetMoney()
    {
        return LoadData().money;
    }
}

