using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Tablet_Control : MonoBehaviour
{
    private string[] targetSceneName = { "Map001", "Map002" };
    [SerializeField] private GameObject Tablet;

    private void Update()
    {
        string currentSceneName = SceneManager.GetActiveScene().name;
        foreach (string sceneName in targetSceneName)
        {
            if (currentSceneName == sceneName)
            {
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    Tablet.SetActive(true);
                    Debug.Log("¿ﬂ ¿€µøµ ");
                }
            }
        }

        
    }

}
