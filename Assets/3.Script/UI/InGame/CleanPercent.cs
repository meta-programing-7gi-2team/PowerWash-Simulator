using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CleanPercent : MonoBehaviour
{
    private CleanDraw Clean;
    [SerializeField] private Text ObjectName;
    [SerializeField] private Slider ObjectSlider;
    private Transform playerCamera;
    LayerMask layer;
    RaycastHit hit;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        layer = (1 << LayerMask.NameToLayer("Pack"));
    }
    private void Update()
    {
        // 레이캐스트 수행
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, ~layer))
        {
            hit.transform.TryGetComponent(out Clean);

            if (Clean)
            {
                string name = EnumObject.GetName(Clean.Spongebob, Clean.Pineapple, Clean.Patrick, Clean.Squidward, Clean.KrustyKrab);
                ObjectName.text = name;
                ObjectSlider.value = 100 - Clean.ColorRatio;
            }
        }

    }

}
