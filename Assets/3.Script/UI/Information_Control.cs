using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Information_Control : MonoBehaviour
{
   [SerializeField] private Text npc_Img_name_txt;
   [SerializeField] private Text npc_name_txt;
   [SerializeField] private Text place;
   [SerializeField] private Text info_txt;

    private void Start()
   {
       if (UIManager.instance.Map001_btn_clk.Equals(true))
       {
           npc_Img_name_txt.text = "��";
   
           npc_name_txt.text = "��������";
   
           place.text = "��Ű�� ��Ƽ ��ձ�";
   
           info_txt.text= "���, ���, ��, ��¥, ��¥ �Ŀ� ���Ű� �Ծ�! �̷��� ���༭ ���� �⻵!\n" +
                          "\n���� ��ħ�� �Ͼ���� ����� ���� ������ �������� �־���.��ü ��� �� ������ �ƹ��� �� ���� ������!\n" +
                          "\n�����㿡�� �� �ݷ� ������ �����̸� ���� ��¦ ���� ��Ƽ �ܿ��� �ƹ� �ϵ� �����ŵ�. ���� ����� ��Ƽ����! �޷� ��Ƽ�� �������̱��� ��ΰ� �����.����Ű�鵵 �԰� ���Ͻ��� �Ծ�. �Ƹ� ����� �ִ��� �������̾��� �ž�! ������ ��Ƽ�� ������ ���� �и��� û�Ҹ� �߾�. �ƴϸ� ���� ��� û���ϴ� ���� �� �ɱ�?\n"+
                          "\n��·�� ¡¡�̰� �츮 ſ�̶�� �׷������. �ڽ��� ���󿡼� �ڹ̵� ������ �� ȹ�� �߰� ���� ���ƿ��� �� ���� �������� ������ ��ΰ� ��ȸ�ϰ� �� ���� ������ �Ŷ�� �׷���!\n"+
                          "\n�츮 �� ���� ���� ���� û�����شٸ� �Ի� ���Ÿ� �谡 ���� ��ŭ �ٰ�! ���Ի���Ե� �����ٰ� �Ͻ� �ž�... �Ƹ���.";
       }

        if (UIManager.instance.Map002_btn_clk.Equals(true))
        {
            npc_Img_name_txt.text = "��";

            npc_name_txt.text = "���Ի���";

            place.text = "��Ű�� ��Ƽ �ٴٹٴڱ�";

            info_txt.text = "�̳��� �Դ� �ͺ��� �� ���� �� ���� �Ƴ�? �̳��� ���Ը� ���� �ڵ��� �ž�! �� ���� �ö�ũ���� ���� ���� �ٹ̰� �ִ��� �𸣰�����, �̹��� ���� �Ѿ ���� �Ѿ���!\n" +
                            "\n�� ���Ǹ� ������ �Ի� ���� ����� ���� ������ ��ȹ�̶��, ����ó�� ������ ���ۿ� ������. �ö�ũ���� �������� ���� �ٺ��ϱ� ���̾�.\n" +
                            "\n�� ���Ը��Ƹ� �ִ��� ���� û������.�̳��� �����ִ� �ð��� ��������� ���ذ� ���ϱ�!";
        }
    }
}
