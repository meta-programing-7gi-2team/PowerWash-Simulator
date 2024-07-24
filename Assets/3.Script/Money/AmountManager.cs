using UnityEngine;
using System.Collections.Generic;
using System.IO;
using System;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AmountManager : MonoBehaviour
{
    // ---------------------------------------------------------
    #region 맵1
    public List<MapAmountData> Map001_AmountData { get; private set; } = new List<MapAmountData>();
    public MapProcessData Map001_ProcessData { get; private set; }
    public List<MoneyData> Map001_MoneyData;
    #endregion
    // ---------------------------------------------------------
    #region 맵2
    public List<MapAmountData> Map002_AmountData { get; private set; } = new List<MapAmountData>();
    public MapProcessData Map002_ProcessData { get; private set; }
    public List<MoneyData> Map002_MoneyData;
    #endregion
    // ---------------------------------------------------------

    private string DirName = DefaultName.DirName;
    private string FileName = DefaultName.AmountFileName;

    [SerializeField] private GameObject buttonPrefab;
    [SerializeField] private Transform buttonParent;
    [SerializeField] private Text amountText;
    [SerializeField] private Text getAmountText;
    [SerializeField] private Text stateText;
    private EnumObject.Map state;
    private Queue<GameObject> gameObjects;

    // 데이터 초기화
    private void Awake()
    {
        state = EnumObject.Map.None;
        gameObjects = new Queue<GameObject>();
        //Init();
    }
    public void State(EnumObject.Map state)
    {
        if(!this.state.Equals(state))
        {
            switch(state)
            {
                case EnumObject.Map.Map001:
                    GetMap001();
                    LoadMapListData(Map001_AmountData);
                    break;
                case EnumObject.Map.Map002:
                    GetMap002();
                    LoadMapListData(Map002_AmountData);
                    break;
            }
        }
    }
    public void LoadMapListData(List<MapAmountData> AmountData)
    {
        float amount_Sum = 0;
        float getAmount_Sum = 0;
        float state_Sum = 0;

        for(int i = gameObjects.Count - 1; i >=  0; i--)
        {
            GameObject beforeButton = gameObjects.Dequeue();
            Destroy(beforeButton);
        }

        for (int i = 0; i < AmountData.Count; i++)
        {
            GameObject newButton = Instantiate(buttonPrefab, buttonParent);
            gameObjects.Enqueue(newButton);
            Text[] buttonTextComponent = newButton.GetComponentsInChildren<Text>();
            if (buttonTextComponent != null)
            {
                buttonTextComponent[0].text = AmountData[i].Name;
                buttonTextComponent[1].text = AmountData[i].Amount.ToString("$0.00");
                buttonTextComponent[2].text = AmountData[i].GetAmount.ToString("$0.00");

                amount_Sum += AmountData[i].Amount;
                getAmount_Sum += AmountData[i].GetAmount;
                state_Sum += AmountData[i].State;
                if (AmountData[i].State.Equals(0))
                {
                    buttonTextComponent[3].text = "-";
                }
                else if (AmountData[i].State.Equals(100))
                {
                    buttonTextComponent[3].text = "청소 완료!";
                }
                else
                {
                    buttonTextComponent[3].text = string.Format("{0}%", (int)AmountData[i].State);
                }
                // 버튼의 클릭 이벤트 설정
                Button buttonComponent = newButton.GetComponent<Button>();
                if (buttonComponent != null)
                {
                    buttonComponent.onClick.AddListener(() => OnButtonClick(buttonTextComponent[0].text));
                }
            }
            amountText.text = amount_Sum.ToString("$0.00");
            getAmountText.text = getAmount_Sum.ToString("$0.00");
            stateText.text = string.Format("{0}%", (int)(state_Sum / AmountData.Count));
        }
    }

    public void InitializeMap001()
    {
        Map001_ProcessData = new MapProcessData(Process.New);
        Map001_AmountData.Clear();
        for (int i = 0; i < Map001_MoneyData.Count; i++)
        {
            string name = EnumObject.GetName(Map001_MoneyData[i].Spongebob, Map001_MoneyData[i].Pineapple, Map001_MoneyData[i].Patrick, Map001_MoneyData[i].Squidward, Map001_MoneyData[i].KrustyKrab, Map001_MoneyData[i].ChumBucket);
            Map001_AmountData.Add(new MapAmountData(name, Map001_MoneyData[i].Amount, 0, 0));
        }
        SaveMap001();
    }
    public void InitializeMap002()
    {
        Map002_ProcessData = new MapProcessData(Process.New);
        Map002_AmountData.Clear();
        for (int i = 0; i < Map002_MoneyData.Count; i++)
        {
            string name = EnumObject.GetName(Map002_MoneyData[i].Spongebob, Map002_MoneyData[i].Pineapple, Map002_MoneyData[i].Patrick, Map002_MoneyData[i].Squidward, Map002_MoneyData[i].KrustyKrab, Map002_MoneyData[i].ChumBucket);
            Map002_AmountData.Add(new MapAmountData(name, Map002_MoneyData[i].Amount, 0, 0));
        }
        SaveMap002();
    }

    // 데이터 저장

    #region Save
    private void SaveMap001()
    {
        try
        {
            string jsonData = JsonUtility.ToJson(new SerializableList<MapAmountData>(Map001_ProcessData, Map001_AmountData), true);

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
            string jsonData = JsonUtility.ToJson(new SerializableList<MapAmountData>(Map002_ProcessData, Map002_AmountData), true);

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

    #region Load
    private List<MapAmountData> LoadMap001()
    {
        string filePath = Path.Combine(Application.dataPath, DirName, FileName + "_map001.json");

        if (File.Exists(filePath))
        {
            try
            {
                string jsonData = File.ReadAllText(filePath);
                SerializableList<MapAmountData> loadedData = JsonUtility.FromJson<SerializableList<MapAmountData>>(jsonData);
                Map001_ProcessData = loadedData.process;
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
                Map002_ProcessData = loadedData.process;
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

    public void SetMap001_Data(Process process)
    {
        Map001_ProcessData.process = process;
        SaveMap001();
    }
    public void SetMap001_Data(MapAmountData mapAmountData)
    {
        for (int i = 0; i< Map001_AmountData.Count; i++)
        {
            if(Map001_AmountData[i].Name.Equals(mapAmountData.Name))
            {
                Map001_AmountData[i] = mapAmountData;
                break;
            }
        }
        SaveMap001();
    }
    public void SetMap001_Data(List<MapAmountData> mapAmountData)
    {
        Map001_AmountData = mapAmountData;
        SaveMap001();
    }
    public void SetMap002_Data(Process process)
    {
        Map002_ProcessData.process = process;
        SaveMap002();
    }
    public void SetMap002_Data(MapAmountData mapAmountData)
    {
        for (int i = 0; i < Map002_AmountData.Count; i++)
        {
            if (Map002_AmountData[i].Name.Equals(mapAmountData.Name))
            {
                Map002_AmountData[i] = mapAmountData;
                break;
            }
        }
        SaveMap002();
    }
    public void SetMap002_Data(List<MapAmountData> mapAmountData)
    {
        Map002_AmountData = mapAmountData;
        SaveMap002();
    }
    public List<MapAmountData> GetMap001()
    {
        LoadMap001();
        return Map001_AmountData;
    }
    public MapAmountData GetMap001(string name)
    {
        LoadMap001();
        for (int i = 0; i < Map001_AmountData.Count; i++)
        { 
            if(Map001_AmountData[i].Equals(name))
            {
                return Map001_AmountData[i];
            }
        }
        return new MapAmountData("-", 0, 0, 0);
    }
    public List<MapAmountData> GetMap002()
    {
        LoadMap002();
        return Map002_AmountData;
    }
    public MapAmountData GetMap002(string name)
    {
        LoadMap001();
        for (int i = 0; i < Map002_AmountData.Count; i++)
        {
            if (Map002_AmountData[i].Equals(name))
            {
                return Map002_AmountData[i];
            }
        }
        return new MapAmountData("-", 0, 0, 0);
    }

    /// <summary>
    /// 책정할 가격 데이터를 리턴해주는 메소드
    /// </summary>
    public MoneyData GetAmount(EnumObject.Spongebob spongebob, EnumObject.Pineapple pineapple, EnumObject.Patrick patrick, EnumObject.Squidward squidward, EnumObject.KrustyKrab krustyKrab, EnumObject.ChumBucket chumBucket)
    {
        for (int i = 0; i< Map001_MoneyData.Count; i++)
        {
            if (Map001_MoneyData[i].Spongebob.Equals(spongebob))
            {
                if (Map001_MoneyData[i].Pineapple.Equals(pineapple))
                {
                    return Map001_MoneyData[i];
                }
                else if (Map001_MoneyData[i].Patrick.Equals(patrick))
                {
                    return Map001_MoneyData[i];
                }
                else if (Map001_MoneyData[i].Squidward.Equals(squidward))
                {
                    return Map001_MoneyData[i];
                }
            }
        }
        for (int i = 0; i < Map002_MoneyData.Count; i++)
        {
            if (Map002_MoneyData[i].Spongebob.Equals(spongebob))
            {
                if (Map002_MoneyData[i].KrustyKrab.Equals(krustyKrab))
                {
                    return Map002_MoneyData[i];
                }
                else if (Map002_MoneyData[i].ChumBucket.Equals(chumBucket))
                {
                    return Map002_MoneyData[i];
                }
            }
        }
        return new MoneyData();
    }
    public void OnButtonClick(string buttonText)
    {
        Debug.Log(buttonText + " clicked!");
        EventSystem.current.SetSelectedGameObject(null);
    }

    [System.Serializable]
    private class SerializableList<T>
    {
        public MapProcessData process;
        public List<T> list;

        public SerializableList(MapProcessData p, List<T> l)
        {
            process = p;
            list = l;
        }
    }
}

