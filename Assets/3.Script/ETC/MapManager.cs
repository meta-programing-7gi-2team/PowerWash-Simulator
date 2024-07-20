using UnityEngine;
using System.IO;
using System;

public class MapManager
{
    public string FileName;
    public MapData mapData { get; private set; }
    public string DriName = "Save";

    // 데이터 초기화
    public void InitializeMapData()
    {
        mapData = new MapData(false);
        SaveMap();
    }

    // 데이터 저장
    public void SaveMap()
    {
        try
        {
            // JSON으로 직렬화하여 저장
            string jsonData = JsonUtility.ToJson(mapData, true);

            File.WriteAllText(Path.Combine(Application.dataPath, DriName, FileName + ".json"), jsonData);
            Debug.Log("Data saved successfully.");
        }
        catch (Exception e)
        {
            Debug.LogError("Failed to save data: " + e.Message);
        }
    }

    // 데이터 불러오기
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
                InitializeMapData(); // 데이터 로드 실패 시 초기화
            }
        }
        else
        {
            InitializeMapData(); // 저장된 데이터가 없을 경우 초기화
        }

        return mapData;
    }

    public void Saved()
    {
        mapData = new MapData(true);
        SaveMap();
    }
}
