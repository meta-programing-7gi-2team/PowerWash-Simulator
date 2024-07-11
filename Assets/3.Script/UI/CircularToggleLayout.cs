using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CircularToggleLayout : MonoBehaviour
{
    public float radius = 150f; // 반지름 설정
    public Toggle[] toggles;

    void Start()
    {
        ArrangeTogglesInCircle();
    }

    void ArrangeTogglesInCircle()
    {
        int numToggles = toggles.Length;
        float angleStep = 360f / numToggles;

        for (int i = 0; i < numToggles; i++)
        {
            float angle = i * angleStep;
            float angleRad = angle * Mathf.Deg2Rad;
            Vector3 pos = new Vector3(Mathf.Cos(angleRad) * radius, Mathf.Sin(angleRad) * radius, 0f);
            toggles[i].GetComponent<RectTransform>().anchoredPosition = pos;
        }
    }
}
