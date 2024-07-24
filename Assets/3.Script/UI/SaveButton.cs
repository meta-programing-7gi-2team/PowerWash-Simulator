using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SaveButton : MonoBehaviour
{

    [SerializeField] private Button Save_Btu;
    [SerializeField] private SaveObserver Save;
    private AmountManager amountManager;
    private List<MapAmountData> mapAmounts_map001;
    private List<MapAmountData> mapAmounts_map002;

    private void OnEnable()
    {
        Save_Btu.onClick.AddListener(OnButtonClick);
        Save = FindObjectOfType<SaveObserver>();
        amountManager = FindObjectOfType<AmountManager>();
    }

    void OnButtonClick()
    {
        Save.SaveObservers();
        GameManager.instance.SaveAmount();

        float[] Pineapple = new float[22];
        float[] Patrick = new float[9];
        float[] Squidward = new float[15];
        float[] KrustyKrab = new float[31];
        float[] ChumBucket = new float[11];

        int[] Pineapple_cnt = new int[Pineapple.Length];
        int[] Patrick_cnt = new int[Patrick.Length];
        int[] Squidward_cnt = new int[Squidward.Length];
        int[] KrustyKrab_cnt = new int[KrustyKrab.Length];
        int[] ChumBucket_cnt = new int[ChumBucket.Length];

        string[] Pineapple_name = new string[Pineapple.Length];
        string[] Patrick_name = new string[Patrick.Length];
        string[] Squidward_name = new string[Squidward.Length];
        string[] KrustyKrab_name = new string[KrustyKrab.Length];
        string[] ChumBucket_name = new string[ChumBucket.Length];

        for (int i = 0; i < Pineapple.Length; i++)
        {
            Pineapple[i] = 0;
            Pineapple_cnt[i] = 0;
        }
        for (int i = 0; i < Patrick.Length; i++)
        {
            Patrick[i] = 0;
            Patrick_cnt[i] = 0;
        }
        for (int i = 0; i < Squidward.Length; i++)
        {
            Squidward[i] = 0;
            Squidward_cnt[i] = 0;
        }
        for (int i = 0; i < KrustyKrab.Length; i++)
        {
            KrustyKrab[i] = 0;
            KrustyKrab_cnt[i] = 0;
        }
        for (int i = 0; i < ChumBucket.Length; i++)
        {
            ChumBucket[i] = 0;
            ChumBucket_cnt[i] = 0;
        }

        List<CleanDraw> objectsWith = new List<CleanDraw>();
        if (objectsWith == null || objectsWith.Count == 0)
        {
            objectsWith.AddRange(FindObjectsOfType<CleanDraw>());
        }
        foreach (CleanDraw obj in objectsWith)
        {
            switch(obj.Spongebob)
            {
                case EnumObject.Spongebob.Pineapple:
                    Pineapple[(int)obj.Pineapple - 1] += obj.ColorRatio;
                    Pineapple_cnt[(int)obj.Pineapple - 1]++;
                    Pineapple_name[(int)obj.Pineapple - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.Patrick:
                    Patrick[(int)obj.Patrick - 1] += obj.ColorRatio;
                    Patrick_cnt[(int)obj.Patrick - 1]++;
                    Patrick_name[(int)obj.Patrick - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.Squidward:
                    Squidward[(int)obj.Squidward - 1] += obj.ColorRatio;
                    Squidward_cnt[(int)obj.Squidward - 1]++;
                    Squidward_name[(int)obj.Squidward - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.KrustyKrab:
                    KrustyKrab[(int)obj.KrustyKrab - 1] += obj.ColorRatio;
                    KrustyKrab_cnt[(int)obj.KrustyKrab - 1]++;
                    KrustyKrab_name[(int)obj.KrustyKrab - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
                case EnumObject.Spongebob.ChumBucket:
                    ChumBucket[(int)obj.ChumBucket - 1] += obj.ColorRatio;
                    ChumBucket_cnt[(int)obj.ChumBucket - 1]++;
                    ChumBucket_name[(int)obj.ChumBucket - 1] = EnumObject.GetName(obj.Spongebob, obj.Pineapple, obj.Patrick, obj.Squidward, obj.KrustyKrab, obj.ChumBucket);
                    break;
            }
        }
        for (int i = 0; i < Pineapple.Length; i++)
        {
            if(Pineapple[i] != 0 && Pineapple_cnt[i] != 0)
                Pineapple[i] = Pineapple[i] / Pineapple_cnt[i];
        }
        for (int i = 0; i < Patrick.Length; i++)
        {
            if (Patrick[i] != 0 && Patrick_cnt[i] != 0)
                Patrick[i] = Patrick[i] / Patrick_cnt[i];
        }
        for (int i = 0; i < Squidward.Length; i++)
        {
            if (Squidward[i] != 0 && Squidward_cnt[i] != 0)
                Squidward[i] = Squidward[i] / Squidward_cnt[i];
        }
        for (int i = 0; i < KrustyKrab.Length; i++)
        {
            if (KrustyKrab[i] != 0 && KrustyKrab_cnt[i] != 0)
                KrustyKrab[i] = KrustyKrab[i] / KrustyKrab_cnt[i];
        }
        for (int i = 0; i < ChumBucket.Length; i++)
        {
            if (ChumBucket[i] != 0 && ChumBucket_cnt[i] != 0)
                ChumBucket[i] = ChumBucket[i] / ChumBucket_cnt[i];
        }
        mapAmounts_map001 = amountManager.GetMap001();
        mapAmounts_map002 = amountManager.GetMap002();

        for (int i = 0; i < mapAmounts_map001.Count; i++)
        {
            if(mapAmounts_map001[i].Name.Contains("스폰지밥의 집"))
            {
                for (int j = 0; j < Pineapple_name.Length; j++)
                {
                    if (mapAmounts_map001[i].Name.Equals(Pineapple_name[j]))
                    {
                        mapAmounts_map001[i].State = Pineapple[j];
                        break;
                    }
                }
            }
            else if(mapAmounts_map001[i].Name.Contains("뚱이의 집"))
            {
                for (int j = 0; j < Patrick_name.Length; j++)
                {
                    if (mapAmounts_map001[i].Name.Equals(Patrick_name[j]))
                    {
                        mapAmounts_map001[i].State = Patrick[j];
                        break;
                    }
                }
            }
            else
            {
                for (int j = 0; j < Squidward_name.Length; j++)
                {
                    if (mapAmounts_map001[i].Name.Equals(Squidward_name[j]))
                    {
                        mapAmounts_map001[i].State = Squidward[j];
                        break;
                    }
                }
            }
        }

        for (int i = 0; i < mapAmounts_map002.Count; i++)
        {
            if (mapAmounts_map002[i].Name.Contains("집게리아"))
            {
                for (int j = 0; j < KrustyKrab_name.Length; j++)
                {
                    if (mapAmounts_map002[i].Name.Equals(KrustyKrab_name[j]))
                    {
                        mapAmounts_map002[i].State = KrustyKrab[j];
                        break;
                    }
                }
            }
            else
            {
                for (int j = 0; j < ChumBucket_name.Length; j++)
                {
                    if (mapAmounts_map002[i].Name.Equals(ChumBucket_name[j]))
                    {
                        mapAmounts_map002[i].State = ChumBucket[j];
                        break;
                    }
                }
            }
        }

        amountManager.SetMap001_Data(mapAmounts_map001);
        amountManager.SetMap002_Data(mapAmounts_map002);
    }
}
