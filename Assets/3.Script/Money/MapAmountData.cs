[System.Serializable]
public class MapAmountData
{
    public string Name; //¼³¸í
    public float Amount; //°ª
    public float GetAmount; //È¹µæÇÔ
    public float State; // - 0~99% Ã»¼Ò¿Ï·á

    public MapAmountData(string name, float amount, float getAmount, float state)
    {
        Name = name;
        Amount = amount;
        GetAmount = getAmount;
        State = state;
    }
}