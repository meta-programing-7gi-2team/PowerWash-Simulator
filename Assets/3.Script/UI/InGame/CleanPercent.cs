using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CleanPercent : MonoBehaviour
{
    private CleanDraw Clean;
    [SerializeField] private Text ObjectName;
    [SerializeField] private Slider ObjectSlider;
    private Transform playerCamera;
    LayerMask layer;
    RaycastHit hit;

    private void Start()
    {
        playerCamera = Camera.main.transform;
        layer = (1 << LayerMask.NameToLayer("Pack"));
    }
    private void Update()
    {
        
        // 레이캐스트 수행
        if (Physics.Raycast(playerCamera.position, playerCamera.forward, out hit, Mathf.Infinity, ~layer))
        {
            hit.transform.TryGetComponent(out Clean);
            string name = string.Empty;

            if (Clean)
            {
                switch(Clean.Spongebob)
                {
                    case EnumObject.Spongebob.Pineapple:
                        switch(Clean.Pineapple)
                        {
                            case EnumObject.Pineapple.Leaf:
                                name = "스폰지밥의 집 - 파인애플 잎";
                                break;
                            case EnumObject.Pineapple.Panel:
                                name = "스폰지밥의 집 - 파인애플 판";
                                break;
                            case EnumObject.Pineapple.PanelBottom:
                                name = "스폰지밥의 집 - 파인애플 아래쪽";
                                break;
                            case EnumObject.Pineapple.PanelTop:
                                name = "스폰지밥의 집 - 파인애플 위쪽 판";
                                break;
                            case EnumObject.Pineapple.Crown:
                                name = "스폰지밥의 집 - 파인애플 뚜껑";
                                break;
                            case EnumObject.Pineapple.holeFrame:
                                name = "스폰지밥의 집 - 둥근 창문 틀";
                                break;
                            case EnumObject.Pineapple.FrontDoor:
                                name = "스폰지밥의 집 - 정문";
                                break;
                            case EnumObject.Pineapple.FrontDoorFrame:
                                name = "스폰지밥의 집 - 정문 프레임";
                                break;
                            case EnumObject.Pineapple.FrontDoorHandle:
                                name = "스폰지밥의 집 - 정문 손잡이";
                                break;
                            case EnumObject.Pineapple.GarageDoor:
                                name = "스폰지밥의 집 - 차고 문";
                                break;
                            case EnumObject.Pineapple.GarageDoorAlcove:
                                name = "스폰지밥의 집 - 차고 문 벽감";
                                break;
                            case EnumObject.Pineapple.holeWindow:
                                name = "스폰지밥의 집 - 둥근 창문";
                                break;
                            case EnumObject.Pineapple.Chimney:
                                name = "스폰지밥의 집 - 굴뚝";
                                break;
                            case EnumObject.Pineapple.ImaginationBox:
                                name = "스폰지밥의 집 - 상상력 상자";
                                break;
                            case EnumObject.Pineapple.Path:
                                name = "스폰지밥의 집 - 길";
                                break;
                            case EnumObject.Pineapple.PathSteppingStone:
                                name = "스폰지밥의 집 - 길 디딤돌";
                                break;
                            case EnumObject.Pineapple.ReefBlower:
                                name = "스폰지밥의 집 - 암초 송풍기";
                                break;
                            case EnumObject.Pineapple.ReefBlowerNozzle:
                                name = "스폰지밥의 집 - 암초 송풍기 노즐";
                                break;
                            case EnumObject.Pineapple.BubbleStand:
                                name = "스폰지밥의 집 - 비눗방울 가판대";
                                break;
                            case EnumObject.Pineapple.BubbleStandContainer:
                                name = "스폰지밥의 집 - 비눗방울 가판대 컨테이너";
                                break;
                            case EnumObject.Pineapple.BubbleStandPlaque:
                                name = "스폰지밥의 집 - 비눗방울 가판대 명패";
                                break;
                            case EnumObject.Pineapple.BubbleStandSign:
                                name = "스폰지밥의 집 - 비눗방울 가판대 간판";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.Patrick:
                        switch (Clean.Patrick)
                        {
                            case EnumObject.Patrick.Bin:
                                name = "뚱이의 집 - 쓰레기통";
                                break;
                            case EnumObject.Patrick.Path:
                                name = "뚱이의 집 - 길";
                                break;
                            case EnumObject.Patrick.Couch:
                                name = "뚱이의 집 - 소파";
                                break;
                            case EnumObject.Patrick.Lamp:
                                name = "뚱이의 집 - 램프";
                                break;
                            case EnumObject.Patrick.Television:
                                name = "뚱이의 집 - 텔레비전";
                                break;
                            case EnumObject.Patrick.Rock:
                                name = "뚱이의 집 - 바위";
                                break;
                            case EnumObject.Patrick.RockUnderside:
                                name = "뚱이의 집 - 바위 아랫면";
                                break;
                            case EnumObject.Patrick.RockHinge:
                                name = "뚱이의 집 - 바위 경첩";
                                break;
                            case EnumObject.Patrick.WeatherVane:
                                name = "뚱이의 집 - 풍향계";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.Squidward:
                        switch(Clean.Squidward)
                        {
                            case EnumObject.Squidward.Bicycle:
                                name = "징징이의 집 - 자전거";
                                break;
                            case EnumObject.Squidward.Brow:
                                name = "징징이의 집 - 눈썹";
                                break;
                            case EnumObject.Squidward.Door:
                                name = "징징이의 집 - 문";
                                break;
                            case EnumObject.Squidward.DoorAlcove:
                                name = "징징이의 집 - 문 벽감";
                                break;
                            case EnumObject.Squidward.DoorKnob:
                                name = "징징이의 집 - 문 손잡이";
                                break;
                            case EnumObject.Squidward.Ear:
                                name = "징징이의 집 - 귀";
                                break;
                            case EnumObject.Squidward.Head:
                                name = "징징이의 집 - 머리";
                                break;
                            case EnumObject.Squidward.Nose:
                                name = "징징이의 집 - 코";
                                break;
                            case EnumObject.Squidward.holeFrame:
                                name = "징징이의 집 - 둥근 창문 틀";
                                break;
                            case EnumObject.Squidward.holeWindow:
                                name = "징징이의 집 - 둥근 창문";
                                break;
                            case EnumObject.Squidward.RearWindow:
                                name = "징징이의 집 - 뒷창문";
                                break;
                            case EnumObject.Squidward.RearWindowFrame:
                                name = "징징이의 집 - 뒷창문 틀";
                                break;
                            case EnumObject.Squidward.Roof:
                                name = "징징이의 집 - 지붕";
                                break;
                            case EnumObject.Squidward.RoofChair:
                                name = "징징이의 집 - 지붕 의자";
                                break;
                            case EnumObject.Squidward.Step:
                                name = "징징이의 집 - 나무 토막";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.KrustyKrab:
                        switch (Clean.KrustyKrab)
                        {
                            case EnumObject.KrustyKrab.Arch:
                                name = "집게리아 - 아치";
                                break;
                            case EnumObject.KrustyKrab.Base:
                                name = "집게리아 - 토대";
                                break;
                            case EnumObject.KrustyKrab.Chimney:
                                name = "집게리아 - 굴뚝";
                                break;
                            case EnumObject.KrustyKrab.Door:
                                name = "집게리아 - 문";
                                break;
                            case EnumObject.KrustyKrab.DoorFrame:
                                name = "집게리아 - 문틀";
                                break;
                            case EnumObject.KrustyKrab.DoorHandle:
                                name = "집게리아 - 문손잡이";
                                break;
                            case EnumObject.KrustyKrab.DumpsterInner:
                                name = "집게리아 - 쓰레기통 안쪽";
                                break;
                            case EnumObject.KrustyKrab.DumpsterLidFace:
                                name = "집게리아 - 쓰레기통 뚜껑";
                                break;
                            case EnumObject.KrustyKrab.DumpsterLidRim:
                                name = "집게리아 - 쓰레기통 뚜껑 가장자리";
                                break;
                            case EnumObject.KrustyKrab.DumpsterOuter:
                                name = "집게리아 - 쓰레기통 바깥쪽";
                                break;
                            case EnumObject.KrustyKrab.DumpsterRim:
                                name = "집게리아 - 쓰레기통 가장자리";
                                break;
                            case EnumObject.KrustyKrab.DumpsterWheel:
                                name = "집게리아 - 쓰레기통 바퀴";
                                break;
                            case EnumObject.KrustyKrab.EntranceSignPost:
                                name = "집게리아 - 입구 표지판 기둥";
                                break;
                            case EnumObject.KrustyKrab.FlagRope:
                                name = "집게리아 - 깃발 밧줄";
                                break;
                            case EnumObject.KrustyKrab.Mayo:
                                name = "집게리아 - 마요네즈";
                                break;
                            case EnumObject.KrustyKrab.Nail:
                                name = "집게리아 - 못";
                                break;
                            case EnumObject.KrustyKrab.holeFrame:
                                name = "집게리아 - 둥근 창문 틀";
                                break;
                            case EnumObject.KrustyKrab.holeWindow:
                                name = "집게리아 - 둥근 창문";
                                break;
                            case EnumObject.KrustyKrab.RearDoor:
                                name = "집게리아 - 후문";
                                break;
                            case EnumObject.KrustyKrab.RearDoorFrame:
                                name = "집게리아 - 후문 틀";
                                break;
                            case EnumObject.KrustyKrab.RearDoorPorthole:
                                name = "집게리아 - 후문 둥근 창문";
                                break;
                            case EnumObject.KrustyKrab.RearWall:
                                name = "집게리아 - 후면 벽";
                                break;
                            case EnumObject.KrustyKrab.RoofPlank:
                                name = "집게리아 - 지붕 나무 토막";
                                break;
                            case EnumObject.KrustyKrab.SideWallPlank:
                                name = "집게리아 - 옆면 나무 토막";
                                break;
                            case EnumObject.KrustyKrab.SignPole:
                                name = "집게리아 - 간판 기둥";
                                break;
                            case EnumObject.KrustyKrab.SignShell:
                                name = "집게리아 - 간판 조개 껍데기";
                                break;
                            case EnumObject.KrustyKrab.SignLetter:
                                name = "집게리아 - 간판 글씨";
                                break;
                            case EnumObject.KrustyKrab.Window:
                                name = "집게리아 - 창문";
                                break;
                            case EnumObject.KrustyKrab.WeatherVane:
                                name = "집게리아 - 풍향계";
                                break;
                            case EnumObject.KrustyKrab.SideWallRope:
                                name = "집게리아 - 측면 벽 밧줄";
                                break;
                            case EnumObject.KrustyKrab.MaritimeFlag:
                                name = "집게리아 - 바다 깃발";
                                break;
                        }
                        break;
                }
                ObjectName.text = name;
                ObjectSlider.value = 100 - Clean.ColorRatio;
            }
        }

    }

}
