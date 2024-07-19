using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class PostureControl : MonoBehaviour
{
    private PlayerState playerState;

    [SerializeField]
    private Image[] posture;
    private int curPos = 0;
    private Color disable = new Color(35f / 255f, 81f / 255f, 131f / 255f);

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
    }
    private void Update()
    {
        ChangePostureUI();
    }

    private void ChangePostureUI()
    {
        posture[curPos].color = disable;
        switch (playerState.state)
        {
            case State.Idle:
            case State.Run:
            case State.Hand:
                curPos = 0;
                break;
            case State.Crouch:
                curPos = 1;
                break;
            case State.Lie:
                curPos = 2;
                break;
        }
        posture[curPos].color = Color.white;
    }
}
