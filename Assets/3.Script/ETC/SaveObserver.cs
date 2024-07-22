using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SaveObserver : MonoBehaviour, ISaveSubject
{
    private List<ISaveObserver> observers = new List<ISaveObserver>();
    public void RegisterObserver(ISaveObserver observer)
    {
        observers.Add(observer);
    }
    public void RemoveObserver(ISaveObserver observer)
    {
        observers.Add(observer);
    }
    public void SaveObservers()
    {
        foreach (var observer in observers)
        {
            observer.Save();
        }
    }
}
