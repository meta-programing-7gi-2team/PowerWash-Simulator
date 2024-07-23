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
        
        // ����ĳ��Ʈ ����
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
                                name = "���������� �� - ���ξ��� ��";
                                break;
                            case EnumObject.Pineapple.Panel:
                                name = "���������� �� - ���ξ��� ��";
                                break;
                            case EnumObject.Pineapple.PanelBottom:
                                name = "���������� �� - ���ξ��� �Ʒ���";
                                break;
                            case EnumObject.Pineapple.PanelTop:
                                name = "���������� �� - ���ξ��� ���� ��";
                                break;
                            case EnumObject.Pineapple.Crown:
                                name = "���������� �� - ���ξ��� �Ѳ�";
                                break;
                            case EnumObject.Pineapple.holeFrame:
                                name = "���������� �� - �ձ� â�� Ʋ";
                                break;
                            case EnumObject.Pineapple.FrontDoor:
                                name = "���������� �� - ����";
                                break;
                            case EnumObject.Pineapple.FrontDoorFrame:
                                name = "���������� �� - ���� ������";
                                break;
                            case EnumObject.Pineapple.FrontDoorHandle:
                                name = "���������� �� - ���� ������";
                                break;
                            case EnumObject.Pineapple.GarageDoor:
                                name = "���������� �� - ���� ��";
                                break;
                            case EnumObject.Pineapple.GarageDoorAlcove:
                                name = "���������� �� - ���� �� ����";
                                break;
                            case EnumObject.Pineapple.holeWindow:
                                name = "���������� �� - �ձ� â��";
                                break;
                            case EnumObject.Pineapple.Chimney:
                                name = "���������� �� - ����";
                                break;
                            case EnumObject.Pineapple.ImaginationBox:
                                name = "���������� �� - ���� ����";
                                break;
                            case EnumObject.Pineapple.Path:
                                name = "���������� �� - ��";
                                break;
                            case EnumObject.Pineapple.PathSteppingStone:
                                name = "���������� �� - �� �����";
                                break;
                            case EnumObject.Pineapple.ReefBlower:
                                name = "���������� �� - ���� ��ǳ��";
                                break;
                            case EnumObject.Pineapple.ReefBlowerNozzle:
                                name = "���������� �� - ���� ��ǳ�� ����";
                                break;
                            case EnumObject.Pineapple.BubbleStand:
                                name = "���������� �� - �񴰹�� ���Ǵ�";
                                break;
                            case EnumObject.Pineapple.BubbleStandContainer:
                                name = "���������� �� - �񴰹�� ���Ǵ� �����̳�";
                                break;
                            case EnumObject.Pineapple.BubbleStandPlaque:
                                name = "���������� �� - �񴰹�� ���Ǵ� ����";
                                break;
                            case EnumObject.Pineapple.BubbleStandSign:
                                name = "���������� �� - �񴰹�� ���Ǵ� ����";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.Patrick:
                        switch (Clean.Patrick)
                        {
                            case EnumObject.Patrick.Bin:
                                name = "������ �� - ��������";
                                break;
                            case EnumObject.Patrick.Path:
                                name = "������ �� - ��";
                                break;
                            case EnumObject.Patrick.Couch:
                                name = "������ �� - ����";
                                break;
                            case EnumObject.Patrick.Lamp:
                                name = "������ �� - ����";
                                break;
                            case EnumObject.Patrick.Television:
                                name = "������ �� - �ڷ�����";
                                break;
                            case EnumObject.Patrick.Rock:
                                name = "������ �� - ����";
                                break;
                            case EnumObject.Patrick.RockUnderside:
                                name = "������ �� - ���� �Ʒ���";
                                break;
                            case EnumObject.Patrick.RockHinge:
                                name = "������ �� - ���� ��ø";
                                break;
                            case EnumObject.Patrick.WeatherVane:
                                name = "������ �� - ǳ���";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.Squidward:
                        switch(Clean.Squidward)
                        {
                            case EnumObject.Squidward.Bicycle:
                                name = "¡¡���� �� - ������";
                                break;
                            case EnumObject.Squidward.Brow:
                                name = "¡¡���� �� - ����";
                                break;
                            case EnumObject.Squidward.Door:
                                name = "¡¡���� �� - ��";
                                break;
                            case EnumObject.Squidward.DoorAlcove:
                                name = "¡¡���� �� - �� ����";
                                break;
                            case EnumObject.Squidward.DoorKnob:
                                name = "¡¡���� �� - �� ������";
                                break;
                            case EnumObject.Squidward.Ear:
                                name = "¡¡���� �� - ��";
                                break;
                            case EnumObject.Squidward.Head:
                                name = "¡¡���� �� - �Ӹ�";
                                break;
                            case EnumObject.Squidward.Nose:
                                name = "¡¡���� �� - ��";
                                break;
                            case EnumObject.Squidward.holeFrame:
                                name = "¡¡���� �� - �ձ� â�� Ʋ";
                                break;
                            case EnumObject.Squidward.holeWindow:
                                name = "¡¡���� �� - �ձ� â��";
                                break;
                            case EnumObject.Squidward.RearWindow:
                                name = "¡¡���� �� - ��â��";
                                break;
                            case EnumObject.Squidward.RearWindowFrame:
                                name = "¡¡���� �� - ��â�� Ʋ";
                                break;
                            case EnumObject.Squidward.Roof:
                                name = "¡¡���� �� - ����";
                                break;
                            case EnumObject.Squidward.RoofChair:
                                name = "¡¡���� �� - ���� ����";
                                break;
                            case EnumObject.Squidward.Step:
                                name = "¡¡���� �� - ���� �丷";
                                break;
                        }
                        break;
                    case EnumObject.Spongebob.KrustyKrab:
                        switch (Clean.KrustyKrab)
                        {
                            case EnumObject.KrustyKrab.Arch:
                                name = "���Ը��� - ��ġ";
                                break;
                            case EnumObject.KrustyKrab.Base:
                                name = "���Ը��� - ���";
                                break;
                            case EnumObject.KrustyKrab.Chimney:
                                name = "���Ը��� - ����";
                                break;
                            case EnumObject.KrustyKrab.Door:
                                name = "���Ը��� - ��";
                                break;
                            case EnumObject.KrustyKrab.DoorFrame:
                                name = "���Ը��� - ��Ʋ";
                                break;
                            case EnumObject.KrustyKrab.DoorHandle:
                                name = "���Ը��� - ��������";
                                break;
                            case EnumObject.KrustyKrab.DumpsterInner:
                                name = "���Ը��� - �������� ����";
                                break;
                            case EnumObject.KrustyKrab.DumpsterLidFace:
                                name = "���Ը��� - �������� �Ѳ�";
                                break;
                            case EnumObject.KrustyKrab.DumpsterLidRim:
                                name = "���Ը��� - �������� �Ѳ� �����ڸ�";
                                break;
                            case EnumObject.KrustyKrab.DumpsterOuter:
                                name = "���Ը��� - �������� �ٱ���";
                                break;
                            case EnumObject.KrustyKrab.DumpsterRim:
                                name = "���Ը��� - �������� �����ڸ�";
                                break;
                            case EnumObject.KrustyKrab.DumpsterWheel:
                                name = "���Ը��� - �������� ����";
                                break;
                            case EnumObject.KrustyKrab.EntranceSignPost:
                                name = "���Ը��� - �Ա� ǥ���� ���";
                                break;
                            case EnumObject.KrustyKrab.FlagRope:
                                name = "���Ը��� - ��� ����";
                                break;
                            case EnumObject.KrustyKrab.Mayo:
                                name = "���Ը��� - �������";
                                break;
                            case EnumObject.KrustyKrab.Nail:
                                name = "���Ը��� - ��";
                                break;
                            case EnumObject.KrustyKrab.holeFrame:
                                name = "���Ը��� - �ձ� â�� Ʋ";
                                break;
                            case EnumObject.KrustyKrab.holeWindow:
                                name = "���Ը��� - �ձ� â��";
                                break;
                            case EnumObject.KrustyKrab.RearDoor:
                                name = "���Ը��� - �Ĺ�";
                                break;
                            case EnumObject.KrustyKrab.RearDoorFrame:
                                name = "���Ը��� - �Ĺ� Ʋ";
                                break;
                            case EnumObject.KrustyKrab.RearDoorPorthole:
                                name = "���Ը��� - �Ĺ� �ձ� â��";
                                break;
                            case EnumObject.KrustyKrab.RearWall:
                                name = "���Ը��� - �ĸ� ��";
                                break;
                            case EnumObject.KrustyKrab.RoofPlank:
                                name = "���Ը��� - ���� ���� �丷";
                                break;
                            case EnumObject.KrustyKrab.SideWallPlank:
                                name = "���Ը��� - ���� ���� �丷";
                                break;
                            case EnumObject.KrustyKrab.SignPole:
                                name = "���Ը��� - ���� ���";
                                break;
                            case EnumObject.KrustyKrab.SignShell:
                                name = "���Ը��� - ���� ���� ������";
                                break;
                            case EnumObject.KrustyKrab.SignLetter:
                                name = "���Ը��� - ���� �۾�";
                                break;
                            case EnumObject.KrustyKrab.Window:
                                name = "���Ը��� - â��";
                                break;
                            case EnumObject.KrustyKrab.WeatherVane:
                                name = "���Ը��� - ǳ���";
                                break;
                            case EnumObject.KrustyKrab.SideWallRope:
                                name = "���Ը��� - ���� �� ����";
                                break;
                            case EnumObject.KrustyKrab.MaritimeFlag:
                                name = "���Ը��� - �ٴ� ���";
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
