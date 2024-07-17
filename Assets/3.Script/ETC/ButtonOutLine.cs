using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ButtonOutLine : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    private Outline outline;

    void Start()
    {
        outline = GetComponent<Outline>();

        if (outline != null)
        {
            Color c = outline.effectColor;
            c.a = 0;
            outline.effectColor = c;
        }
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        if (outline != null)
        {
            Color c = outline.effectColor;
            c.a = 1.0f;
            outline.effectColor = c;
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (outline != null)
        {
            Color c = outline.effectColor;
            c.a = 0;
            outline.effectColor = c;
        }
    }
}
