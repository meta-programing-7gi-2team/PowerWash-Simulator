using UnityEngine;
using System.IO;
using System;

public class MapManager
{
    public string FileName;
    public MapSaveData mapData { get; private set; }

    private string DirName = DefaultName.DirName;

    // ������ �ʱ�ȭ
    private void InitializeMapData()
    {
        mapData = new MapSaveData(false);
        SaveMap();
    }

    // ������ ����
    private void SaveMap()
    {
        try
        {
            // JSON���� ����ȭ�Ͽ� ����
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

    // ������ �ҷ�����
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
        mapData = new MapSaveData(true);
        SaveMap();
    }
}
