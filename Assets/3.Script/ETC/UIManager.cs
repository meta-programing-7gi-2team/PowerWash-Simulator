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
    [SerializeField] private Text text1; // 처음 텍스트
    [SerializeField] private Text text2; // 30% 텍스트
    [SerializeField] private Text text3; // 70% 텍스트
    [SerializeField] private GameObject Button; // 버튼

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
        text1.gameObject.SetActive(false); // 텍스트 비활성화
        text2.gameObject.SetActive(false); // 텍스트 비활성화
        text3.gameObject.SetActive(false); // 텍스트 비활성화
    }

    public void LoadStart(int Index)
    {
        LoadAll.SetActive(true);
        StartCoroutine(LoadSceneAsync(Index));
    }

    private IEnumerator LoadSceneAsync(int sceneIndex)
    {
        operation = SceneManager.LoadSceneAsync(sceneIndex);
        operation.allowSceneActivation = false; // 씬 전환을 수동으로 조절

        while (!operation.isDone)
        {
            float progress = Mathf.Clamp01(operation.progress / 0.9f);
            loadingSlider.value = progress;

            // 로딩 진행 상황에 따라 텍스트 오브젝트 활성화
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
                Button.gameObject.SetActive(true); // 로딩이 완료되면 버튼을 활성화
            }

            yield return null;
        }
    }

    public void ButtonClick()
    {
        operation.allowSceneActivation = true; // 씬 전환 활성화
    }

}
