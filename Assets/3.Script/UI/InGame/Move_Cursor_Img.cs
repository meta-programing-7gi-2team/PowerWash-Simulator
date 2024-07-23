using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Move_Cursor_Img : MonoBehaviour
{
    [SerializeField] private RectTransform moveCursor_Img;

    private void Update()
    {
        Update_MousePosition();
    }

    private void Update_MousePosition()
    {
        Vector2 mousePos = Input.mousePosition;
        moveCursor_Img.position = mousePos;
        //float w = moveCursor_Img.rect.width;
        //float h = moveCursor_Img.rect.height;
        //moveCursor_Img.position = transform_cursor.position + (new Vector3(w, h) * 0.5f);
    }



}
