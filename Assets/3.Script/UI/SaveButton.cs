using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SaveButton : MonoBehaviour
{

    [SerializeField] private Button Save_Btu;
    [SerializeField] private SaveObserver Save;

    private void OnEnable()
    {
        Save_Btu.onClick.AddListener(OnButtonClick);
        Save = FindObjectOfType<SaveObserver>();
    }

    void OnButtonClick()
    {
        Save.SaveObservers();
        GameManager.instance.SaveAmount();

        AmountManager.instance.SaveMap001();
        AmountManager.instance.SaveMap002();
    }
}
