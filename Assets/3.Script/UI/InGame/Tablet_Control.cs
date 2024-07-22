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
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Debug.Log("¿ﬂ ¿€µøµ ");
        }
    }

}
