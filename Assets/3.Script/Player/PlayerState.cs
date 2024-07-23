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

public class PlayerState : MonoBehaviour, ISubject
{
    private List<IObserver> _observer = new List<IObserver>();
    public State state { get; private set; }
    private void Start()
    {
        state = State.Idle;
        Notify();
    }
    public void SetState(State state)
    {
        this.state = state;
        Notify();
    }

    public void Register(IObserver observer)
    {
        _observer.Add(observer);
    }

    public void Remover(IObserver observer)
    {
        _observer.Remove(observer);
    }

    public void Notify()
    {
        foreach(IObserver o in _observer)
        {
            o.UpdateState(state);
        }
    }
}
