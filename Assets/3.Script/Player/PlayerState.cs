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
    public State state { get; private set; }

    private void Start()
    {
        state = State.Idle;
    }
    public void SetState(State state)
    {
        this.state = state;
    }
}
