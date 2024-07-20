using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum State
{
    Idle,
    Crouch,
    Lie,
    Run,
    Hand
}

public class PlayerState : MonoBehaviour
{
    public static PlayerState instance = null;
    public State state { get; private set; }
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    private void Start()
    {
        state = State.Idle;
    }
    public void SetState(State state)
    {
        this.state = state;
    }
}
