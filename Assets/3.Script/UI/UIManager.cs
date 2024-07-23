using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

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

    public static string[] targetSceneName = { "Map001", "Map002" };
    [SerializeField] private GameObject Tablet;

    private float ObjectAll;
    public bool Map001;
    public bool Map002;
    public List<GameObject> objectsWithTag = new List<GameObject>();

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
        if (Tablet == null)
        {
            Tablet = GameObject.FindWithTag("Tablet").transform.GetChild(0).gameObject;
        }
       string currentSceneName = SceneManager.GetActiveScene().name;

        foreach (string sceneName in targetSceneName)
        {
            if (currentSceneName == sceneName)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    if (Tablet.activeSelf)
                    {
                        isCursor = false;
                        Tablet.SetActive(false);
                        Cursor.visible = false;
                        Cursor.lockState = CursorLockMode.Locked;
                    }
                    else
                    {
                        isCursor = true;
                        Tablet.SetActive(true);
                        Cursor.visible = false;
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
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Pineapple");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
            }

            targetProgress = 0.8f;
            while (loadingSlider.value < 0.8f)
            {
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Squidward");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
            }

            targetProgress = 0.9f;
            while (loadingSlider.value < 0.9f)
            {
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Patrick");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
            }

            targetProgress = 1f;
            while (loadingSlider.value < 1f)
            {
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("Stand");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
            }
        }

        else if(Scene.Equals("Map002"))
        {
            targetProgress = 0.8f;
            while (loadingSlider.value < 0.8f)
            {
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("KrustyKrab");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
            }

            targetProgress = 1f;
            while (loadingSlider.value < 1f)
            {
                ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>("ChumBucket");
                while (!resourceRequest.isDone)
                {
                    loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
                    text.text = "오염 로드 중";
                    yield return null;
                }
                Instantiate(resourceRequest.asset);
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
            // 슬라이더 값 및 텍스트 업데이트
            float averageRatio = ObjectAll / objectsWithTag.Count;
            AllObjectSlider.value = Mathf.Clamp(averageRatio, 0, 100);
            AllObjectText.text = $"{Mathf.RoundToInt(AllObjectSlider.value)}%";
        }
    }

}