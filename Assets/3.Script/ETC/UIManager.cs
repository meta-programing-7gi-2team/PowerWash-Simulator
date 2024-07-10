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
    [SerializeField] private Text text1; // ó�� �ؽ�Ʈ
    [SerializeField] private Text text2; // 30% �ؽ�Ʈ
    [SerializeField] private Text text3; // 70% �ؽ�Ʈ
    [SerializeField] private GameObject Button; // ��ư

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
        text1.gameObject.SetActive(false); // �ؽ�Ʈ ��Ȱ��ȭ
        text2.gameObject.SetActive(false); // �ؽ�Ʈ ��Ȱ��ȭ
        text3.gameObject.SetActive(false); // �ؽ�Ʈ ��Ȱ��ȭ
    }

    public void LoadStart(int Index)
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadSceneAsync(Index));
    }

    private IEnumerator LoadSceneAsync(int sceneIndex)
    {
        operation = SceneManager.LoadSceneAsync(sceneIndex);
        operation.allowSceneActivation = false; // �� ��ȯ�� �������� ����

        while (!operation.isDone)
        {
            float progress = Mathf.Clamp01(operation.progress / 0.9f);
            loadingSlider.value = progress;

            // �ε� ���� ��Ȳ�� ���� �ؽ�Ʈ ������Ʈ Ȱ��ȭ
            if (progress >= 0.1f && !text1.gameObject.activeSelf)
            {
                text1.gameObject.SetActive(true);
            }
            if (progress >= 0.3f && !text2.gameObject.activeSelf)
            {
                text1.gameObject.SetActive(false);
                text2.gameObject.SetActive(true);
            }
            if (progress >= 0.7f && !text3.gameObject.activeSelf)
            {
                text2.gameObject.SetActive(false);
                text3.gameObject.SetActive(true);
            }

            if (progress >= 1f)
            {
                text3.gameObject.SetActive(false);
                loadingSlider.gameObject.SetActive(false);
                Button.gameObject.SetActive(true); // �ε��� �Ϸ�Ǹ� ��ư�� Ȱ��ȭ
            }

            yield return null;
        }
    }

    public void ButtonClick()
    {
        operation.allowSceneActivation = true; // �� ��ȯ Ȱ��ȭ
    }

}
