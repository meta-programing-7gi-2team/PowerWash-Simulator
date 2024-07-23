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
           npc_Img_name_txt.text = "스";
   
           npc_name_txt.text = "스폰지밥";
   
           place.text = "비키니 시티 고둥길";
   
           info_txt.text= "우와, 우와, 와, 진짜, 진짜 파워 워셔가 왔어! 이렇게 와줘서 정말 기뻐!\n" +
                          "\n오늘 아침에 일어나보니 모두의 집이 완전히 더러워져 있었어.대체 어떻게 된 일인지 아무도 알 수가 없었지!\n" +
                          "\n어젯밤에는 내 반려 달팽이 핑핑이를 위한 깜짝 생일 파티 외에는 아무 일도 없었거든. 정말 대단한 파티였어! 메롱 시티의 갯지렁이까지 모두가 와줬어.씨몽키들도 왔고 데니스도 왔어. 아마 역사상 최대의 난장판이었을 거야! 하지만 파티가 끝나고 나서 분명히 청소를 했어. 아니면 깜빡 잠들어서 청소하는 꿈을 꾼 걸까?\n"+
                          "\n어쨌든 징징이가 우리 탓이라고 그러더라고. 자신이 갈라에서 코미디 역사의 한 획을 긋고 집에 돌아왔을 때 집이 깨끗하지 않으면 모두가 후회하게 될 일을 저지를 거라고 그랬어!\n"+
                          "\n우리 세 명의 집을 전부 청소해준다면 게살 버거를 배가 터질 만큼 줄게! 집게사장님도 괜찮다고 하실 거야... 아마도.";
       }

        if (UIManager.instance.Map002_btn_clk.Equals(true))
        {
            npc_Img_name_txt.text = "집";

            npc_name_txt.text = "집게사장";

            place.text = "비키니 시티 바다바닥길";

            info_txt.text = "미끼를 먹는 것보다 더 나쁜 게 뭔지 아나? 미끼가 가게를 온통 뒤덮는 거야! 그 못된 플랑크톤이 무슨 짓을 꾸미고 있는지 모르겠지만, 이번엔 선을 넘어도 한참 넘었어!\n" +
                            "\n내 주의를 돌려서 게살 버거 비법을 훔쳐 가려는 계획이라면, 이전처럼 실패할 수밖에 없을걸. 플랑크톤은 뇌세포가 없는 바보니까 말이야.\n" +
                            "\n내 집게리아를 최대한 빨리 청소해줘.미끼가 묻어있는 시간이 길어질수록 손해가 나니까!";
        }
    }
}
