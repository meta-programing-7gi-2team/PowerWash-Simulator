using UnityEngine;
using System.IO;
using System;

public class MapManager
{
    public string FileName;
    public MapSaveData mapData { get; private set; }

    private string DirName = DefaultName.DirName;

    // 데이터 초기화
    private void InitializeMapData()
    {
        mapData = new MapSaveData(false);
        SaveMap();
    }

    // 데이터 저장
    private void SaveMap()
    {
        try
        {
            // JSON으로 직렬화하여 저장
            string jsonData = JsonUtility.ToJson(mapData, true);

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

    // 데이터 불러오기
    public MapSaveData LoadMap()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + ".json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                mapData = JsonUtility.FromJson<MapSaveData>(jsonData);
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
        mapData = new MapSaveData(true);
        SaveMap();
    }
}
