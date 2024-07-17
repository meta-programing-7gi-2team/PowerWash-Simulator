using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    public static UIManager instance = null;
    private AsyncOperation operation;

    [SerializeField] private GameObject LoadAll;
    [SerializeField] private Slider loadingSlider; // 로딩바
    [SerializeField] private Text text; // 처음 텍스트
    [SerializeField] private GameObject Button; // 버튼

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

    private void Start()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false); // 텍스트 비활성화
    }

    public void LoadStart(int Index)
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadSceneAsync(Index));
    }

    public void ButtonClick()
    {
        LoadAll.SetActive(false);
        text.gameObject.SetActive(false);
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private IEnumerator LoadSceneAsync(int sceneIndex)
    {
        loadingSlider.maxValue = 1f; // 명시적으로 최대값 설정
        loadingSlider.value = 0f; // 초기값 설정

        // 텍스트 초기화
        text.gameObject.SetActive(true);
        text.text = "로딩 중... 0%";

        // 씬 로드 시작
        operation = SceneManager.LoadSceneAsync(sceneIndex);
        operation.allowSceneActivation = false; // 씬 전환을 수동으로 조절

        while (!operation.isDone)
        {
            // 씬 로드 진행률 업데이트
            if (operation.progress < 0.9f)
            {
                targetProgress = Mathf.Clamp01(operation.progress / 0.9f) * 0.9f; // 90%까지 증가
            }
            else if (!operation.allowSceneActivation)
            {
                operation.allowSceneActivation = true;
            }

            // 로딩 바 부드럽게 업데이트
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
            text.text = $"로딩 중... {(loadingSlider.value * 100f):0}%";
            yield return null; // 프레임마다 반복
        }

        // 씬 로드 완료 후 오브젝트 로드 시작
        yield return StartCoroutine(LoadObjectsAsync());

        // 로딩 완료
        targetProgress = 1f; // 100% 진행
        while (loadingSlider.value < 1f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
            text.text = $"로딩 중... {(loadingSlider.value * 100f):0}%";
            yield return null;
        }

        text.gameObject.SetActive(false);
        loadingSlider.gameObject.SetActive(false);
        Button.gameObject.SetActive(true); // 로딩이 완료되면 버튼을 활성화
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    private IEnumerator LoadObjectsAsync()
    {
        string[] objectsToLoad = { "Pineapple", "Patrick", "Squidward", "Stand" };

        for (int i = 0; i < objectsToLoad.Length; i++)
        {
            ResourceRequest resourceRequest = Resources.LoadAsync<GameObject>(objectsToLoad[i]);
            while (!resourceRequest.isDone)
            {
                yield return null; // 프레임마다 반복
            }
            Instantiate(resourceRequest.asset);        }
    }
}
