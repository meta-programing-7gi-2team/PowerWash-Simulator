public interface IDustSubject
{
    void RegisterObserver(IDustObserver observer);
    void RemoveObserver(IDustObserver observer);
    void TabNotifyObservers();
}
