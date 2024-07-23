using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface ISubject
{
    void Register(IObserver observer);
    void Remover(IObserver observer);
    void Notify();
}
