using UnityEngine;
using System.IO;
using System;

public class MapManager
{
    public string FileName;
    public MapData mapData { get; private set; }
    public string DriName = "Save";

    // ������ �ʱ�ȭ
    public void InitializeMapData()
    {
        mapData = new MapData(false);
        SaveMap();
    }

    // ������ ����
    public void SaveMap()
    {
        try
        {
            // JSON���� ����ȭ�Ͽ� ����
            string jsonData = JsonUtility.ToJson(mapData, true);

            File.WriteAllText(Path.Combine(Application.dataPath, DriName, FileName + ".json"), jsonData);
            Debug.Log("Data saved successfully.");
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }

    // ������ �ҷ�����
    public MapData LoadMap()
    {
        string filePath = Path.Combine(Application.dataPath, DriName, FileName + ".json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                mapData = JsonUtility.FromJson<MapData>(jsonData);
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

        return mapData;
    }

    public void Saved()
    {
        mapData = new MapData(true);
        SaveMap();
    }
}
