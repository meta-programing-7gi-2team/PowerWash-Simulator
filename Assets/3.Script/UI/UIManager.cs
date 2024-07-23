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
    [SerializeField] private Slider loadingSlider; // �ε���
    [SerializeField] private Slider AllObjectSlider; // ��������Ʈ������
    [SerializeField] private Text AllObjectText; // ��������Ʈ�ؽ�Ʈ
    [SerializeField] private Text text; // ó�� �ؽ�Ʈ
    [SerializeField] private GameObject Button; // ��ư
    [SerializeField] private GameObject Tablet;
    private CanvasGroup InGame;

    public static string[] targetSceneName = { "Map001", "Map002" };

    private float ObjectAll;
    public bool Map001;
    public bool Map002;
    public List<GameObject> objectsWithTag = new List<GameObject>();

    private bool Pineapple;
    private bool Squidward;
    private bool Patrick;
    private bool Stand;
    private bool KrustyKrab;
    private bool ChumBucket;

    private AsyncOperation asyncLoad;

    public bool isCursor { get; private set; }
    private float targetProgress = 0f;
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
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
        text.gameObject.SetActive(false); // �ؽ�Ʈ ��Ȱ��ȭ
    }
    public void LoadStart(string Scene)
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadYourAsyncScene(Scene));
    }

    public void ButtonClick()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false);
        asyncLoad.allowSceneActivation = true;
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private IEnumerator LoadYourAsyncScene(string Scene)
    {

        loadingSlider.maxValue = 1f; // ��������� �ִ밪 ����
        loadingSlider.value = 0f; // �ʱⰪ ����

        // �ؽ�Ʈ �ʱ�ȭ
        text.gameObject.SetActive(true);

        asyncLoad = SceneManager.LoadSceneAsync(Scene);

        targetProgress = 0.3f;
        while (loadingSlider.value < 0.3f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.3f);
            text.text = "���� �ϴ� ��";
            yield return null;
        }

        targetProgress = 0.6f;
        while (loadingSlider.value < 0.6f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.3f);
            text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Pineapple = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Squidward = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Patrick = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    Stand = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    KrustyKrab = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
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
                        text.text = "���� �ε� ��";
                        yield return null;
                    }
                    Instantiate(resourceRequest.asset);
                    ChumBucket = true;
                }
                else
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "���� �ε� ��";
                    yield return null;
                }
            }
        }

        text.gameObject.SetActive(false);
        loadingSlider.gameObject.SetActive(false);
        Button.gameObject.SetActive(true); // �ε��� �Ϸ�Ǹ� ��ư�� Ȱ��ȭ
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
        if (objectsWithTag == null || objectsWithTag.Count == 0)
        {
            objectsWithTag.AddRange(GameObject.FindGameObjectsWithTag("Object"));
        }

        ObjectAll = 0;

        foreach (GameObject obj in objectsWithTag)
        {
            if (obj.TryGetComponent(out CleanDraw cleanComponent))
            {
                ObjectAll += cleanComponent.ColorRatio;
            }
        }

        if (AllObjectSlider != null && AllObjectText != null)
        {
            // �����̴� �� �� �ؽ�Ʈ ������Ʈ
            float averageRatio = ObjectAll / objectsWithTag.Count;
            AllObjectSlider.value = Mathf.Clamp(averageRatio, 0, 100);
            AllObjectText.text = $"{Mathf.RoundToInt(AllObjectSlider.value)}%";
        }
    }

}