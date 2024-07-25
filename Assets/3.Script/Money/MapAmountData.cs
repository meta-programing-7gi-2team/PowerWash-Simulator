[System.Serializable]
public class MapAmountData
{
    public string Name; //설명
    public float Amount; //값
    public float GetAmount; //획득함
    public float State; // - 0~99% 청소완료
    public int Cnt; // - 0~99% 청소완료

    public MapAmountData(string name, float amount, float getAmount, float state, int cnt)
    {
        Name = name;
        Amount = amount;
        GetAmount = getAmount;
        State = state;
        Cnt = cnt;
    }
}