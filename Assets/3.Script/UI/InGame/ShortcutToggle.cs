using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
public class ShortcutToggle : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    [SerializeField]
    private GameObject highlight;
    public void OnPointerEnter(PointerEventData eventData)
    {
        highlight.SetActive(true);
        AudioManager.instance.PlaySFX_UI("Shortcut_Change");
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        highlight.SetActive(false);
    }

    
}
