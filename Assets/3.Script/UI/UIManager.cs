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
    private AmountManager amountManager;
    private Information_Control information;

    public bool Map001_btn_clk = false;
    public bool Map002_btn_clk = false;

    public bool isCursor { get; private set; }
    private float targetProgress = 0f;
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            information = FindObjectOfType<Information_Control>();
            amountManager = FindObjectOfType<AmountManager>();
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    private void Update()
    {
        if (Tablet.Equals(null))
        {
            Tablet = GameObject.FindWithTag("Tablet");
        }

        string currentSceneName = SceneManager.GetActiveScene().name;

        foreach (string sceneName in targetSceneName)
        {
            if (currentSceneName == sceneName)
            {
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
                    }
                }
            }
        }
    }

    private void Start()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false); // 텍스트 비활성화
    }

    public void LoadStart(string Scene)
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadYourAsyncScene(Scene));

        if(Scene.Equals("Map001"))
        {
            amountManager.GetMap001();
            amountManager.SetMap001_Data(Process.Proceeding);
        }

    }

    public void ButtonClick()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false);
        asyncLoad.allowSceneActivation = true;
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    public void Pineapple_Btn_Click()
    {
        Map001_btn_clk = true;
        information.Info();
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
            Map002_btn_clk = true;
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

        float[] Pineapple = new float[22] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        float[] Patrick = new float[9] { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        float[] Squidward = new float[15] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        float[] KrustyKrab = new float[31] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        float[] ChumBucket = new float[11] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

        foreach (CleanDraw obj in objectsWith)
        {
            ObjectAll += obj.ColorRatio;

            if (obj.Spongebob.Equals(EnumObject.Spongebob.Pineapple))
            {
                Pineapple[(int)obj.Pineapple - 1]++;
            }
            if (obj.Spongebob.Equals(EnumObject.Spongebob.Patrick))
            {
                Patrick[(int)obj.Patrick - 1]++;
            }
            if (obj.Spongebob.Equals(EnumObject.Spongebob.Squidward))
            {
                Squidward[(int)obj.Squidward - 1]++;
            }
            if (obj.Spongebob.Equals(EnumObject.Spongebob.KrustyKrab))
            {
                KrustyKrab[(int)obj.KrustyKrab - 1]++;
            }
            if (obj.Spongebob.Equals(EnumObject.Spongebob.ChumBucket))
            {
                ChumBucket[(int)obj.ChumBucket - 1]++;
            }
        }

        if (AllObjectSlider != null && AllObjectText != null)
        {
            float averageRatio = ObjectAll / objectsWith.Count;
            AllObjectSlider.value = Mathf.Clamp(averageRatio, 0, 100);
            AllObjectText.text = $"{Mathf.RoundToInt(AllObjectSlider.value)}%";
        }
    }



}