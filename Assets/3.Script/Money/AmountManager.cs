using UnityEngine;
using System.Collections.Generic;
using System.IO;
using System;
public class AmountManager
{
    public AmountData amountData { get; private set; }
    // ---------------------------------------------------------
    #region 맵1
    public List<MapAmountData> Map001_AmountData { get; private set; }
    public bool IsStart_Map001 { get; private set; }
    public List<MoneyData> Map001_MoneyData { get; private set; }
    #endregion
    // ---------------------------------------------------------
    #region 맵2
    public List<MapAmountData> Map002_AmountData { get; private set; }
    public bool IsStart_Map002 { get; private set; }
    public List<MoneyData> Map002_MoneyData { get; private set; }
    #endregion
    // ---------------------------------------------------------

    public string DirName = "Save";
    private string FileName = "Amount";

    // 데이터 초기화
    public void InitializeAmount()
    {
        amountData = new AmountData(0);
        SaveAmount();
    }
    public void InitializeMap001()
    {
        Map001_AmountData.Clear();
        for (int i = 0; i < Map001_MoneyData.Count; i++)
        {
            string name = EnumObject.GetName(Map001_MoneyData[i].Spongebob, Map001_MoneyData[i].Pineapple, Map001_MoneyData[i].Patrick, Map001_MoneyData[i].Squidward, Map001_MoneyData[i].KrustyKrab);
            Map001_AmountData.Add(new MapAmountData(name, Map001_MoneyData[i].Amount, 0, "-"));
        }
        SaveMap001();
    }
    public void InitializeMap002()
    {
        Map002_AmountData.Clear();
        for (int i = 0; i < Map002_MoneyData.Count; i++)
        {
            string name = EnumObject.GetName(Map002_MoneyData[i].Spongebob, Map002_MoneyData[i].Pineapple, Map002_MoneyData[i].Patrick, Map002_MoneyData[i].Squidward, Map002_MoneyData[i].KrustyKrab);
            Map001_AmountData.Add(new MapAmountData(name, Map002_MoneyData[i].Amount, 0, "-"));
        }
        SaveMap002();
    }

    // 데이터 저장
    private void SaveMap()
    {
        SaveAmount();
        SaveMap001();
        SaveMap002();
    }

    #region Save
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
    private void SaveMap001()
    {
        try
        {
            string jsonData = JsonUtility.ToJson(new SerializableList<MapAmountData>(Map001_AmountData));

            string dirName = Path.Combine(Application.dataPath, DirName);
            if (!Directory.Exists(dirName))
            {
                Directory.CreateDirectory(dirName);
            }
            File.WriteAllText(Path.Combine(Application.dataPath, DirName, FileName + "_map001.json"), jsonData);
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }
    private void SaveMap002()
    {
        try
        {
            string jsonData = JsonUtility.ToJson(new SerializableList<MapAmountData>(Map002_AmountData));

            string dirName = Path.Combine(Application.dataPath, DirName);
            if (!Directory.Exists(dirName))
            {
                Directory.CreateDirectory(dirName);
            }
            File.WriteAllText(Path.Combine(Application.dataPath, DirName, FileName + "_map002.json"), jsonData);
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }
    #endregion

    // 데이터 불러오기
    private void LoadData()
    {
        LoadAmount();
        LoadMap001();
        LoadMap002();
    }

    #region Load
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
    private List<MapAmountData> LoadMap001()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + "_map001.json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                SerializableList<MapAmountData> loadedData = JsonUtility.FromJson<SerializableList<MapAmountData>>(jsonData);
                Map001_AmountData = loadedData.list;
            }
            catch (Exception e)
            {
                Debug.LogError("Failed to load data: " + e.Message);
                InitializeMap001(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeMap001(); // 저장된 데이터가 없을 경우 초기화
        }

        return Map001_AmountData;
    }
    private List<MapAmountData> LoadMap002()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + "_map002.json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                SerializableList<MapAmountData> loadedData = JsonUtility.FromJson<SerializableList<MapAmountData>>(jsonData);
                Map002_AmountData = loadedData.list;
            }
            catch (Exception e)
            {
                Debug.LogError("Failed to load data: " + e.Message);
                InitializeMap002(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeMap002(); // 저장된 데이터가 없을 경우 초기화
        }

        return Map002_AmountData;
    }
    #endregion

    public void SaveAmount(float amount)
    {
        amountData = new AmountData(amount);
        SaveAmount();
    }
    public void SaveMap001_Data(MapAmountData mapAmountData)
    {
        for(int i = 0; i< Map001_AmountData.Count; i++)
        {
            if(Map001_AmountData[i].Name.Equals(mapAmountData.Name))
            {
                Map001_AmountData[i] = mapAmountData;
                break;
            }
        }
        SaveMap001();
    }
    public void SaveMap002_Data(MapAmountData mapAmountData)
    {
        for(int i = 0; i< Map002_AmountData.Count; i++)
        {
            if(Map002_AmountData[i].Name.Equals(mapAmountData.Name))
            {
                Map002_AmountData[i] = mapAmountData;
                break;
            }
        }
        SaveMap002();
    }
    public float GetAmount()
    {
        return LoadAmount().Amount;
    }
    public List<MapAmountData> GetMap001()
    {
        return Map001_AmountData;
    }
    public List<MapAmountData> GetMap002()
    {
        return Map002_AmountData;
    }
    [System.Serializable]
    private class SerializableList<T>
    {
        public List<T> list;

        public SerializableList(List<T> l)
        {
            list = l;
        }
    }
}

