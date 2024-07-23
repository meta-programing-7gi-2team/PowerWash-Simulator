[System.Serializable]
public class MapProcessData
{
    public Process process;
    public MapProcessData(Process process)
    {
        this.process = process;
    }
}
public enum Process
{
    New,
    Proceeding,
    Complete
}