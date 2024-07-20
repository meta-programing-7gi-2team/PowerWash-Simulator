using UnityEngine;
using System.IO;
using System;
public class MoneyManager
{
    public MoneyData moneyData { get; private set; }
    public string DirName = "Save";
    private string FileName = "money";

    // 데이터 초기화
    public void InitializeMapData()
    {
        moneyData = new MoneyData(0);
        SaveMap();
    }

    // 데이터 저장
    public void SaveMap()
    {
        try
        {
            // JSON으로 직렬화하여 저장
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

    // 데이터 불러오기
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
                InitializeMapData(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeMapData(); // 저장된 데이터가 없을 경우 초기화
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

