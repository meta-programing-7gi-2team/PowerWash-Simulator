using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExtensionReplacement : MonoBehaviour
{
    [SerializeField] private GameObject[] Extension;
    [SerializeField] Transform nozzlePivot;

    private int currentIndex = 0;

    private void Update()
    {
        SetNozzlePivot();

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 0;
            Extension[currentIndex].SetActive(true);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 1;
            Extension[currentIndex].SetActive(true);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 2;
            Extension[currentIndex].SetActive(true);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            Extension[currentIndex].SetActive(false);
            currentIndex = 3;
            Extension[currentIndex].SetActive(true);
        }
    }
    public void SetNozzlePivot()
    {
        switch (currentIndex)
        {
            case 0:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.2f);
                break;
            case 1:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.4f);
                break;
            case 2:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 0.65f);
                break;
            case 3:
                nozzlePivot.localPosition = new Vector3(0, 0.04f, 1f);
                break;
        }
    }
}
