using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Information_Control : MonoBehaviour
{
    [SerializeField] private Image npc_name_Img;
    [SerializeField] private Text npc_Img_name_txt;
    [SerializeField] private Text npc_name_txt;
    [SerializeField] private Text Map_Name;
    [SerializeField] private Text place;
    [SerializeField] private Image Map_Img;
    [SerializeField] private Text info_txt;
    [SerializeField] private Text amount_txt;

    [SerializeField] private Sprite[] Npc_name_Imgs;
    [SerializeField] private Sprite[] Map_Imgs;

    public void Info_Map001()
    {
        npc_name_Img.sprite = Npc_name_Imgs[0];

        Map_Name.text = "��ձ�";

        npc_Img_name_txt.text = "��";

        npc_name_txt.text = "��������";

        place.text = "��Ű�� ��Ƽ ��ձ�";

        info_txt.text = "���, ���, ��, ��¥, ��¥ �Ŀ� ���Ű� �Ծ�! �̷��� ���༭ ���� �⻵!\n" +
                       "\n���� ��ħ�� �Ͼ���� ����� ���� ������ �������� �־���.��ü ��� �� ������ �ƹ��� �� ���� ������!\n" +
                       "\n�����㿡�� �� �ݷ� ������ �����̸� ���� ��¦ ���� ��Ƽ �ܿ��� �ƹ� �ϵ� �����ŵ�. ���� ����� ��Ƽ����! �޷� ��Ƽ�� �������̱��� ��ΰ� �����.����Ű�鵵 �԰� ���Ͻ��� �Ծ�. �Ƹ� ����� �ִ��� �������̾��� �ž�! ������ ��Ƽ�� ������ ���� �и��� û�Ҹ� �߾�. �ƴϸ� ���� ��� û���ϴ� ���� �� �ɱ�?\n" +
                       "\n��·�� ¡¡�̰� �츮 ſ�̶�� �׷������. �ڽ��� ���󿡼� �ڹ̵� ������ �� ȹ�� �߰� ���� ���ƿ��� �� ���� �������� ������ ��ΰ� ��ȸ�ϰ� �� ���� ������ �Ŷ�� �׷���!\n" +
                       "\n�츮 �� ���� ���� ���� û�����شٸ� �Ի� ���Ÿ� �谡 ���� ��ŭ �ٰ�! ���Ի���Ե� �����ٰ� �Ͻ� �ž�... �Ƹ���.";

        Map_Img.sprite = Map_Imgs[0];

        AmountManager.instance.State(EnumObject.Map.Map001);
        amount_txt.text = string.Format("${0:0.00}/${1:0.00}", AmountManager.instance.Map001_GetAmount, AmountManager.instance.Map001_Amount);
    }

    public void Info_Map002()
    {
        npc_name_Img.sprite = Npc_name_Imgs[1];

        Map_Name.text = "���Ը���";

        npc_Img_name_txt.text = "��";

        npc_name_txt.text = "���Ի���";

        place.text = "��Ű�� ��Ƽ �ٴٹٴڱ�";

        info_txt.text = "�̳��� �Դ� �ͺ��� �� ���� �� ���� �Ƴ�? �̳��� ���Ը� ���� �ڵ��� �ž�! �� ���� �ö�ũ���� ���� ���� �ٹ̰� �ִ��� �𸣰�����, �̹��� ���� �Ѿ ���� �Ѿ���!\n" +
                        "\n�� ���Ǹ� ������ �Ի� ���� ����� ���� ������ ��ȹ�̶��, ����ó�� ������ ���ۿ� ������. �ö�ũ���� �������� ���� �ٺ��ϱ� ���̾�.\n" +
                        "\n�� ���Ը��Ƹ� �ִ��� ���� û������.�̳��� �����ִ� �ð��� ��������� ���ذ� ���ϱ�!";

        Map_Img.sprite = Map_Imgs[1];

        AmountManager.instance.State(EnumObject.Map.Map002);
        amount_txt.text = string.Format("${0:0.00}/${1:0.00}", AmountManager.instance.Map002_GetAmount, AmountManager.instance.Map002_Amount);
    }
}
