[System.Serializable]
public class MapAmountData
{
    public string Name; //����
    public float Amount; //��
    public float GetAmount; //ȹ����
    public string State; // - 0~99% û�ҿϷ�

    public MapAmountData(string name, float amount, float getAmount, string state)
    {
        Name = name;
        Amount = amount;
        GetAmount = getAmount;
        State = state;
    }
}