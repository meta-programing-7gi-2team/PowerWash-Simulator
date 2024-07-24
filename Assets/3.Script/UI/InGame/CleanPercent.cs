using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CleanPercent : MonoBehaviour
{
    private CleanDraw Clean;
    [SerializeField] private Text ObjectName;
    [SerializeField] private Slider ObjectSlider;
    [SerializeField] LayerMask layer;
    private Transform playerCamera;
    RaycastHit hit;

    private void Start()
    {
        playerCamera = Camera.main.transform;
    }
    private void Update()
    {
        // 레이캐스트 수행
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, layer))
        {
            hit.transform.TryGetComponent(out Clean);

            if (Clean)
            {
                string name = EnumObject.GetName(Clean.Spongebob, Clean.Pineapple, Clean.Patrick, Clean.Squidward, Clean.KrustyKrab, Clean.ChumBucket);
                ObjectName.text = name;
                ObjectSlider.value = (Clean.CleanRatio - Clean.ColorRatio) * 100 / Clean.CleanRatio;
            }
        }

    }

}
