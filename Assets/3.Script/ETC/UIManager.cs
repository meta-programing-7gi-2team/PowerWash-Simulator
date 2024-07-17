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
    [SerializeField] private Slider loadingSlider; // �ε���
    [SerializeField] private Text text; // ó�� �ؽ�Ʈ
    [SerializeField] private GameObject Button; // ��ư

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
        text.gameObject.SetActive(false); // �ؽ�Ʈ ��Ȱ��ȭ
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
        loadingSlider.maxValue = 1f; // ��������� �ִ밪 ����
        loadingSlider.value = 0f; // �ʱⰪ ����

        // �ؽ�Ʈ �ʱ�ȭ
        text.gameObject.SetActive(true);
        text.text = "�ε� ��... 0%";

        // �� �ε� ����
        operation = SceneManager.LoadSceneAsync(sceneIndex);
        operation.allowSceneActivation = false; // �� ��ȯ�� �������� ����

        while (!operation.isDone)
        {
            // �� �ε� ����� ������Ʈ
            if (operation.progress < 0.9f)
            {
                targetProgress = Mathf.Clamp01(operation.progress / 0.9f) * 0.9f; // 90%���� ����
            }
            else if (!operation.allowSceneActivation)
            {
                operation.allowSceneActivation = true;
            }

            // �ε� �� �ε巴�� ������Ʈ
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
            text.text = $"�ε� ��... {(loadingSlider.value * 100f):0}%";
            yield return null; // �����Ӹ��� �ݺ�
        }

        // �� �ε� �Ϸ� �� ������Ʈ �ε� ����
        yield return StartCoroutine(LoadObjectsAsync());

        // �ε� �Ϸ�
        targetProgress = 1f; // 100% ����
        while (loadingSlider.value < 1f)
        {
            loadingSlider.value = Mathf.MoveTowards(loadingSlider.value, targetProgress, Time.deltaTime * 0.5f);
            text.text = $"�ε� ��... {(loadingSlider.value * 100f):0}%";
            yield return null;
        }

        text.gameObject.SetActive(false);
        loadingSlider.gameObject.SetActive(false);
        Button.gameObject.SetActive(true); // �ε��� �Ϸ�Ǹ� ��ư�� Ȱ��ȭ
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
                yield return null; // �����Ӹ��� �ݺ�
            }
            Instantiate(resourceRequest.asset);        }
    }
}
