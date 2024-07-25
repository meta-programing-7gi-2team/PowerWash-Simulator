using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using DG.Tweening;
public class UIManager : MonoBehaviour
{
    public static UIManager instance = null;
    private AsyncOperation operation;
    private CleanPercent percent;

    [SerializeField] private GameObject LoadAll;
    [SerializeField] private Slider loadingSlider; // 로딩바
    [SerializeField] private Slider AllObjectSlider; // 모든오브젝트게이지
    [SerializeField] private Text AllObjectText; // 모든오브젝트텍스트
    [SerializeField] private Text text; // 처음 텍스트
    [SerializeField] private GameObject Button; // 버튼
    [SerializeField] private GameObject Tablet;
    [SerializeField] private GameObject Save_Btu;
    private CanvasGroup InGame;

    public static string[] targetSceneName = { "Map001", "Map002" };

    private float ObjectAll;

    public List<CleanDraw> objectsWith = new List<CleanDraw>();

    private bool Pineapple;
    private bool Squidward;
    private bool Patrick;
    private bool Stand;
    private bool KrustyKrab;
    private bool ChumBucket;

    private AsyncOperation asyncLoad;
    private Information_Control information;

    public string Mapname;

    public bool isCursor { get; private set; }
    private float targetProgress = 0f;

    private bool Loding;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            information = FindObjectOfType<Information_Control>();
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    private void Update()
    {
        if (Loding) return;

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!InGame)
            {
                InGame = GameObject.FindWithTag("InGame").GetComponent<CanvasGroup>();
            }
            if (isCursor)
            {
                isCursor = false;
                Tablet.GetComponent<RectTransform>().DOAnchorPosY(-540, 0.3f);
                InGame.DOFade(1, 0.3f);
                Cursor.visible = false;
                Cursor.lockState = CursorLockMode.Locked;
            }
            else
            {
                isCursor = true;
                Tablet.GetComponent<RectTransform>().DOAnchorPosY(540, 0.3f);
                InGame.DOFade(0, 0.3f);
                Cursor.visible = true;
                Cursor.lockState = CursorLockMode.None;
                LoadDetailData();
            }
        }
    }

    private void Start()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false); // 텍스트 비활성화
    }

    public void LoadStart()
    {
        string ActiveScene = SceneManager.GetActiveScene().name;

        if(ActiveScene.Equals("Map001"))
        {
            if(ActiveScene.Equals(Mapname))
            {
                isCursor = false;
                Tablet.GetComponent<RectTransform>().DOAnchorPosY(-540, 0.3f);
                InGame.DOFade(1, 0.3f);
                Cursor.visible = false;
                Cursor.lockState = CursorLockMode.Locked;
            }
            else
            {
                Load_Start();
            }
        }
        else if(ActiveScene.Equals("Map002"))
        {
            if (ActiveScene.Equals(Mapname))
            {
                isCursor = false;
                Tablet.GetComponent<RectTransform>().DOAnchorPosY(-540, 0.3f);
                InGame.DOFade(1, 0.3f);
                Cursor.visible = false;
                Cursor.lockState = CursorLockMode.Locked;
            }
            else
            {
                Load_Start();
            }
        }
        else
        {
            Load_Start();
        }
    }

    private void Load_Start()
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadYourAsyncScene(Mapname));
        Loding = true;
        Save_Btu.SetActive(false);
        Tablet.transform.position = new Vector3(960, -540, 0);

        if (Mapname.Equals("Map001"))
        {
            AmountManager.instance.GetMap001();
            AmountManager.instance.SetMap001_Data(Process.Proceeding);
        }

        if (Mapname.Equals("Map002"))
        {
            AmountManager.instance.GetMap002();
            AmountManager.instance.SetMap002_Data(Process.Proceeding);
        }
    }

    private void LoadDetailData()
    {
        float[] Pineapple = new float[22];
        float[] Patrick = new float[9];
        float[] Squidward = new float[15];
        float[] KrustyKrab = new float[31];
        float[] ChumBucket = new float[11];

        int[] Pineapple_cnt = new int[Pineapple.Length];
        int[] Patrick_cnt = new int[Patrick.Length];
        int[] Squidward_cnt = new int[Squidward.Length];
        int[] KrustyKrab_cnt = new int[KrustyKrab.Length];
        int[] ChumBucket_cnt = new int[ChumBucket.Length];

        string[] Pineapple_name = new string[Pineapple.Length];
        string[] Patrick_name = new string[Patrick.Length];
        string[] Squidward_name = new string[Squidward.Length];
        string[] KrustyKrab_name = new string[KrustyKrab.Length];
        string[] ChumBucket_name = new string[ChumBucket.Length];

        for (int i = 0; i < Pineapple.Length; i++)
        {
            Pineapple[i] = 0;
            Pineapple_cnt[i] = 0;
        }
        for (int i = 0; i < Patrick.Length; i++)
        {
            Patrick[i] = 0;
            Patrick_cnt[i] = 0;
        }
        for (int i = 0; i < Squidward.Length; i++)
        {
            Squidward[i] = 0;
            Squidward_cnt[i] = 0;
        }
        for (int i = 0; i < KrustyKrab.Length; i++)
        {
            KrustyKrab[i] = 0;
            KrustyKrab_cnt[i] = 0;
        }
        for (int i = 0; i < ChumBucket.Length; i++)
        {
            ChumBucket[i] = 0;
            ChumBucket_cnt[i] = 0;
        }

        List<CleanDraw> objectsWith = new List<CleanDraw>();
        if (objectsWith == null || objectsWith.Count == 0)
        {
            objectsWith.AddRange(FindObjectsOfType<CleanDraw>());
        }
        foreach (CleanDraw obj in objectsWith)
        {
            switch (obj.Spongebob)
            {
                case EnumObject.Spongebob.Pineapple:
                    Pineapple[(int)obj.Pineapple - 1] += obj.ColorRatio;
                    Pineapple_cnt[(int)obj.Pineapple - 1]++;
                    Pineapple_name[(int)obj.Pineapple - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.Patrick:
                    Patrick[(int)obj.Patrick - 1] += obj.ColorRatio;
                    Patrick_cnt[(int)obj.Patrick - 1]++;
                    Patrick_name[(int)obj.Patrick - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.Squidward:
                    Squidward[(int)obj.Squidward - 1] += obj.ColorRatio;
                    Squidward_cnt[(int)obj.Squidward - 1]++;
                    Squidward_name[(int)obj.Squidward - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.KrustyKrab:
                    KrustyKrab[(int)obj.KrustyKrab - 1] += obj.ColorRatio;
                    KrustyKrab_cnt[(int)obj.KrustyKrab - 1]++;
                    KrustyKrab_name[(int)obj.KrustyKrab - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.ChumBucket:
                    ChumBucket[(int)obj.ChumBucket - 1] += obj.ColorRatio;
                    ChumBucket_cnt[(int)obj.ChumBucket - 1]++;
                    ChumBucket_name[(int)obj.ChumBucket - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
            }
        }
        for (int i = 0; i < Pineapple.Length; i++)
        {
            if (Pineapple[i] != 0 && Pineapple_cnt[i] != 0)
                Pineapple[i] = Pineapple[i] / Pineapple_cnt[i];
        }
        for (int i = 0; i < Patrick.Length; i++)
        {
            if (Patrick[i] != 0 && Patrick_cnt[i] != 0)
                Patrick[i] = Patrick[i] / Patrick_cnt[i];
        }
        for (int i = 0; i < Squidward.Length; i++)
        {
            if (Squidward[i] != 0 && Squidward_cnt[i] != 0)
                Squidward[i] = Squidward[i] / Squidward_cnt[i];
        }
        for (int i = 0; i < KrustyKrab.Length; i++)
        {
            if (KrustyKrab[i] != 0 && KrustyKrab_cnt[i] != 0)
                KrustyKrab[i] = KrustyKrab[i] / KrustyKrab_cnt[i];
        }
        for (int i = 0; i < ChumBucket.Length; i++)
        {
            if (ChumBucket[i] != 0 && ChumBucket_cnt[i] != 0)
                ChumBucket[i] = ChumBucket[i] / ChumBucket_cnt[i];
        }
        AmountManager.instance.GetMap001();
        AmountManager.instance.GetMap002();

        for (int i = 0; i < AmountManager.instance.Map001_AmountData.Count; i++)
        {
            if (AmountManager.instance.Map001_AmountData[i].Name.Contains("스폰지밥의 집"))
            {
                for (int j = 0; j < Pineapple_name.Length; j++)
                {
                    if (AmountManager.instance.Map001_AmountData[i].Name.Equals(Pineapple_name[j]))
                    {
                        AmountManager.instance.Map001_AmountData[i].State = Pineapple[j];
                        break;
                    }
                }
            }
            else if (AmountManager.instance.Map001_AmountData[i].Name.Contains("뚱이의 집"))
            {
                for (int j = 0; j < Patrick_name.Length; j++)
                {
                    if (AmountManager.instance.Map001_AmountData[i].Name.Equals(Patrick_name[j]))
                    {
                        AmountManager.instance.Map001_AmountData[i].State = Patrick[j];
                        break;
                    }
                }
            }
            else
            {
                for (int j = 0; j < Squidward_name.Length; j++)
                {
                    if (AmountManager.instance.Map001_AmountData[i].Name.Equals(Squidward_name[j]))
                    {
                        AmountManager.instance.Map001_AmountData[i].State = Squidward[j];
                        break;
                    }
                }
            }
        }

        for (int i = 0; i < AmountManager.instance.Map002_AmountData.Count; i++)
        {
            if (AmountManager.instance.Map002_AmountData[i].Name.Contains("집게리아"))
            {
                for (int j = 0; j < KrustyKrab_name.Length; j++)
                {
                    if (AmountManager.instance.Map002_AmountData[i].Name.Equals(KrustyKrab_name[j]))
                    {
                        AmountManager.instance.Map002_AmountData[i].State = KrustyKrab[j];
                        break;
                    }
                }
            }
            else
            {
                for (int j = 0; j < ChumBucket_name.Length; j++)
                {
                    if (AmountManager.instance.Map002_AmountData[i].Name.Equals(ChumBucket_name[j]))
                    {
                        AmountManager.instance.Map002_AmountData[i].State = ChumBucket[j];
                        break;
                    }
                }
            }
        }
        if (Mapname.Equals("Map001"))
        {
            AmountManager.instance.State(EnumObject.Map.Map001);
        }
        else
        {
            AmountManager.instance.State(EnumObject.Map.Map002);
        }
    }

    public void ButtonClick()
    {
        isCursor = false;
        text.gameObject.SetActive(true);
        loadingSlider.gameObject.SetActive(true);
        Button.gameObject.SetActive(false);
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false);
        asyncLoad.allowSceneActivation = true;
        Loding = false;
        Save_Btu.SetActive(true);
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private IEnumerator LoadYourAsyncScene(string Scene)
    {

        loadingSlider.maxValue = 1f; // 명시적으로 최대값 설정
        loadingSlider.value = 0f; // 초기값 설정

        // 텍스트 초기화
        text.gameObject.SetActive(true);

        asyncLoad = SceneManager.LoadSceneAsync(Scene);

        targetProgress = 0.3f;
        while (loadingSlider.value < 0.3f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.3f);
            text.text = "정리 하는 중";
            yield return null;
        }

        targetProgress = 0.6f;
        while (loadingSlider.value < 0.6f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.3f);
            text.text = "레벨 로드 중";
            yield return null;

        }

        if(Scene.Equals("Map001"))
        {
            targetProgress = 0.7f;
            while (loadingSlider.value < 0.7f)
            {
                if (!Pineapple)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Pineapple");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Pineapple = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }

            targetProgress = 0.8f;
            while (loadingSlider.value < 0.8f)
            {
                if (!Squidward)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Squidward");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Squidward = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }

            targetProgress = 0.9f;
            while (loadingSlider.value < 0.9f)
            {
                if (!Patrick)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Patrick");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Patrick = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }

            targetProgress = 1f;
            while (loadingSlider.value < 1f)
            {
                if (!Stand)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Stand");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Stand = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }
        }

        else if(Scene.Equals("Map002"))
        {
            targetProgress = 0.8f;
            while (loadingSlider.value < 0.8f)
            {
                if (!KrustyKrab)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("KrustyKrab");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    KrustyKrab = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }

            targetProgress = 1f;
            while (loadingSlider.value < 1f)
            {
                if (!ChumBucket)
                {
                    ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("ChumBucket");
                    while (!resourceRequest.isDone)
                    {
                        loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                        text.text = "오염 로드 중";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    ChumBucket = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
            }
        }

        text.gameObject.SetActive(false);
        loadingSlider.gameObject.SetActive(false);
        Button.gameObject.SetActive(true); // 로딩이 완료되면 버튼을 활성화
        Slidersetting();
        AllObjcetList();
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    private void Slidersetting()
    {
        if (AllObjectSlider == null || AllObjectText == null)
        {
            GameObject sliderObject = GameObject.FindGameObjectWithTag("Recorder");
            GameObject sliderText = GameObject.FindGameObjectWithTag("SliderText");
            if (sliderObject != null)
            {
                AllObjectSlider = sliderObject.GetComponent<Slider>();
                AllObjectSlider.minValue = 0;
                AllObjectSlider.maxValue = 100;
            }
            if (sliderText != null)
            {
                AllObjectText = sliderText.GetComponent<Text>();
                AllObjectText.text = "0%";
            }
        }
    }

    public void AllObjcetList()
    {
        if (objectsWith == null || objectsWith.Count == 0)
        {
            objectsWith.AddRange(FindObjectsOfType<CleanDraw>());
        }

        ObjectAll = 0;

        foreach (CleanDraw obj in objectsWith)
        {
            ObjectAll += obj.ColorRatio;
        }

        if (AllObjectSlider != null && AllObjectText != null)
        {
            float averageRatio = ObjectAll / objectsWith.Count;
            AllObjectSlider.value = Mathf.Clamp(averageRatio, 0, 100);
            AllObjectText.text = $"{Mathf.RoundToInt(AllObjectSlider.value)}%";
        }
    }
}