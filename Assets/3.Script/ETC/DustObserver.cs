using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DustObserver : MonoBehaviour, IDustSubject
{
    private List<IDustObserver> observers = new List<IDustObserver>();
    [SerializeField] private Material dustMaterial;
    [SerializeField] private Material cleanMaterial;
    private bool isChange;

    public void RegisterObserver(IDustObserver observer)
    {
        observers.Add(observer);
    }

    public void RemoveObserver(IDustObserver observer)
    {
        observers.Add(observer);
    }
    public void TabNotifyObservers()
    {
        foreach (var observer in observers)
        {
            observer.DustSparkle();
        }
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            isChange = false;
            TabNotifyObservers();
        }
        else if (Input.GetKeyUp(KeyCode.Tab))
        {
            isChange = true;
            TabNotifyObservers();
        }
    }
    public Material GetDustMaterial()
    {
        return new Material(dustMaterial);
    }
    public Material GetCleanMrial()
    {
        return new Material(cleanMaterial);
    }

    public bool IsChange()
    {
        return isChange;
    }
}
