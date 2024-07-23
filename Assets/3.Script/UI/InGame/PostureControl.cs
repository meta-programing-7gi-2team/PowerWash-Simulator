using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class PostureControl : MonoBehaviour, IObserver
{

    [SerializeField]
    private Image[] posture;
    [SerializeField] 
    private PlayerState playerState;
    private int curPos = 0;
    private Color disable = new Color(35f / 255f, 81f / 255f, 131f / 255f);
    private State state;
    private void OnEnable()
    {
        playerState.Register(this);
    }
    private void ChangePostureUI()
    {
        posture[curPos].color = disable;
        switch (state)
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

    public void UpdateState(State state)
    {
        this.state = state;
        ChangePostureUI();
    }
}
