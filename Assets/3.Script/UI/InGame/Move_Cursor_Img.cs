using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Move_Cursor_Img : MonoBehaviour
{
    [SerializeField] private RectTransform moveCursor_Img;
    [SerializeField] private RectTransform MoveObject;

    [SerializeField] private bool isFollow = false;
    [SerializeField] private Vector2 ObjectCenter;
    [SerializeField] private float ObjectRadius;

    private void Start()
    {
        ObjectCenter = MoveObject.localPosition;
        ObjectRadius = MoveObject.rect.width / 2;

        moveCursor_Img.gameObject.SetActive(false);
    }

    private void Update()
    {
        Update_MousePosition();
    }

    private void Update_MousePosition()
    {
        Vector2 localMousePosition;

        RectTransformUtility.ScreenPointToLocalPointInRectangle(MoveObject, Input.mousePosition, null, out localMousePosition);

        if (Vector2.Distance(ObjectCenter, localMousePosition) <= ObjectRadius)
        {
            if (!isFollow)
            {
                moveCursor_Img.gameObject.SetActive(true);
                isFollow = true;
            }

            moveCursor_Img.anchoredPosition = localMousePosition;
        }
        else
        {
            if (isFollow)
            {
                moveCursor_Img.gameObject.SetActive(false);
                isFollow = false;
            }
        }
    }
}
