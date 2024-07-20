using UnityEngine;
using System.IO;
using System;
public class AmountManager
{
    public AmountData amountData { get; private set; }
    public string DirName = "Save";
    private string FileName = "Amount";

    // 데이터 초기화
    public void InitializeMapData()
    {
        amountData = new AmountData(0);
        SaveMap();
    }

    // 데이터 저장
    public void SaveMap()
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
            Debug.Log("Data saved successfully.");
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }

    // 데이터 불러오기
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
                InitializeMapData(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeMapData(); // 저장된 데이터가 없을 경우 초기화
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

