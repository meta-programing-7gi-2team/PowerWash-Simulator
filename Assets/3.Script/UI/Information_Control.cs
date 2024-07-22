using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Information_Control : MonoBehaviour
{
    [SerializeField] private Text npc_Img_name_txt;
    [SerializeField] private Text npc_name_txt;
    [SerializeField] private Text place;
    [SerializeField] private Text info_txt;

    private void Start()
    {
        string currentSceneName = SceneManager.GetActiveScene().name;

        foreach (string sceneName in UIManager.targetSceneName)
        {
            if (currentSceneName == sceneName)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    
                    Debug.Log("¿ﬂ ¿€µøµ ");
                }
            }
        }
    }

}
