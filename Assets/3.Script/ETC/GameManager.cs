using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class GameManager : MonoBehaviour
{
    public static GameManager instance = null;
    private AmountManager amountManager;
    private float amount;
    [SerializeField] private GameObject buttonPrefab;
    [SerializeField] private Transform buttonParent;
    [SerializeField] private Text amountText;
    [SerializeField] private Text getAmountText;
    [SerializeField] private Text stateText;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
        Init();
    }
    private void Init()
    {
        amountManager = FindObjectOfType<AmountManager>();
        amountManager.GetMap001();
        amountManager.GetMap002();
        amount = amountManager.GetAmount();

        float amount_Sum = 0;
        float getAmount_Sum = 0;
        float state_Sum = 0;

        for (int i = 0; i< amountManager.Map001_AmountData.Count; i++)
        {
            GameObject newButton = Instantiate(buttonPrefab, buttonParent);
            Text[] buttonTextComponent = newButton.GetComponentsInChildren<Text>();
            if (buttonTextComponent != null)
            {
                buttonTextComponent[0].text = amountManager.Map001_AmountData[i].Name;
                buttonTextComponent[1].text = amountManager.Map001_AmountData[i].Amount.ToString("$0.00");
                buttonTextComponent[2].text = amountManager.Map001_AmountData[i].GetAmount.ToString("$0.00");

                amount_Sum += amountManager.Map001_AmountData[i].Amount;
                getAmount_Sum += amountManager.Map001_AmountData[i].GetAmount;
                state_Sum += amountManager.Map001_AmountData[i].State;
                if (amountManager.Map001_AmountData[i].State.Equals(0))
                {
                    buttonTextComponent[3].text = "-";
                }
                else if(amountManager.Map001_AmountData[i].State.Equals(100))
                {
                    buttonTextComponent[3].text = "청소 완료!";
                }
                else
                {
                    buttonTextComponent[3].text = string.Format("{0}%", (int)amountManager.Map001_AmountData[i].State);
                }
            }
            // 버튼의 클릭 이벤트 설정
            Button buttonComponent = newButton.GetComponent<Button>();
            if (buttonComponent != null)
            {
                buttonComponent.onClick.AddListener(() => OnButtonClick(i.ToString()));
            }
            amountText.text = amount_Sum.ToString("$0.00");
            getAmountText.text = getAmount_Sum.ToString("$0.00");
            stateText.text = string.Format("{0}%",(int)(state_Sum / amountManager.Map001_AmountData.Count));
        }
    }
    public float GetAmount()
    {
        return amount;
    }
    public void AddAmount(float amount)
    {
        this.amount += amount;
        amountManager.SetAmount(this.amount);
    }
    void OnButtonClick(string buttonText)
    {
        Debug.Log(buttonText + " clicked!");
        EventSystem.current.SetSelectedGameObject(null);
        
    }
}
