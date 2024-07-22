public interface ISaveSubject
{
    void RegisterObserver(ISaveObserver observer);
    void RemoveObserver(ISaveObserver observer);
    void SaveObservers();
}
