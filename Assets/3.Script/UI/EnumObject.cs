public class EnumObject
{
    public enum Map
    {
        None,
        Map001,
        Map002
    }
    public enum Spongebob
    {
        Pineapple,
        Patrick,
        Squidward,
        KrustyKrab,
        ChumBucket
    };
        
    public enum Pineapple
    {
        None,
        Leaf, // 10
        Panel, // 40
        PanelBottom, // 8
        PanelTop, // 8
        Crown, // 1
        holeFrame, // 3
        FrontDoor, // 1
        FrontDoorFrame, // 1
        FrontDoorHandle, // 1
        GarageDoor, // 1
        GarageDoorAlcove, // 1
        holeWindow, // 1
        Chimney, // 1
        ImaginationBox, // 1
        Path, // 1
        PathSteppingStone, // 17
        ReefBlower, // 1
        ReefBlowerNozzle, // 1
        BubbleStand, // 1
        BubbleStandContainer, // 1
        BubbleStandPlaque, // 1
        BubbleStandSign // 1
    }

    public enum Patrick
    {
        None,
        Bin,
        Path,
        Couch,
        Lamp,
        Television,
        Rock,
        RockUnderside,
        RockHinge,
        WeatherVane
    }

    public enum Squidward
    {
        None,
        Bicycle,
        Brow,
        Door,
        DoorAlcove,
        DoorKnob,
        Ear,
        Head,
        Nose,
        holeFrame,
        holeWindow,
        RearWindow,
        RearWindowFrame,
        Roof,
        RoofChair,
        Step
    }

    public enum KrustyKrab
    {
        None,
        Arch,
        Base,
        Chimney,
        Door,
        DoorFrame,
        DoorHandle,
        DumpsterInner,
        DumpsterLidFace,
        DumpsterLidRim,
        DumpsterOuter,
        DumpsterRim,
        DumpsterWheel,
        EntranceSignPost,
        FlagRope,
        Mayo,
        Nail,
        holeFrame,
        holeWindow,
        RearDoor,
        RearDoorFrame,
        RearDoorPorthole,
        RearWall,
        RoofPlank,
        SideWallPlank,
        SignPole,
        SignShell,
        SignLetter,
        Window,
        WeatherVane,
        SideWallRope,
        MaritimeFlag
    }

    public enum ChumBucket
    {
        None,
        Door,
        DoorHandle,
        DoorWindow,
        Glove,
        Handle,
        HandlePin,
        Letter,
        RimLower,
        RimUpper,
        Roof,
        Wall
    }

    public static string GetName(Spongebob spongebob, Pineapple pineapple, Patrick patrick, Squidward squidward, KrustyKrab krustyKrab, ChumBucket ChumBucket)
    {
        string name = string.Empty;
        switch (spongebob)
        {
            case Spongebob.Pineapple:
                switch (pineapple)
                {
                    case Pineapple.Leaf:
                        name = "���������� �� - ���ξ��� ��";
                        break;
                    case Pineapple.Panel:
                        name = "���������� �� - ���ξ��� ��";
                        break;
                    case Pineapple.PanelBottom:
                        name = "���������� �� - ���ξ��� �Ʒ���";
                        break;
                    case Pineapple.PanelTop:
                        name = "���������� �� - ���ξ��� ���� ��";
                        break;
                    case Pineapple.Crown:
                        name = "���������� �� - ���ξ��� �Ѳ�";
                        break;
                    case Pineapple.holeFrame:
                        name = "���������� �� - �ձ� â�� Ʋ";
                        break;
                    case Pineapple.FrontDoor:
                        name = "���������� �� - ����";
                        break;
                    case Pineapple.FrontDoorFrame:
                        name = "���������� �� - ���� ������";
                        break;
                    case Pineapple.FrontDoorHandle:
                        name = "���������� �� - ���� ������";
                        break;
                    case Pineapple.GarageDoor:
                        name = "���������� �� - ���� ��";
                        break;
                    case Pineapple.GarageDoorAlcove:
                        name = "���������� �� - ���� �� ����";
                        break;
                    case Pineapple.holeWindow:
                        name = "���������� �� - �ձ� â��";
                        break;
                    case Pineapple.Chimney:
                        name = "���������� �� - ����";
                        break;
                    case Pineapple.ImaginationBox:
                        name = "���������� �� - ���� ����";
                        break;
                    case Pineapple.Path:
                        name = "���������� �� - ��";
                        break;
                    case Pineapple.PathSteppingStone:
                        name = "���������� �� - �� �����";
                        break;
                    case Pineapple.ReefBlower:
                        name = "���������� �� - ���� ��ǳ��";
                        break;
                    case Pineapple.ReefBlowerNozzle:
                        name = "���������� �� - ���� ��ǳ�� ����";
                        break;
                    case Pineapple.BubbleStand:
                        name = "���������� �� - �񴰹�� ���Ǵ�";
                        break;
                    case Pineapple.BubbleStandContainer:
                        name = "���������� �� - �񴰹�� ���Ǵ� �����̳�";
                        break;
                    case Pineapple.BubbleStandPlaque:
                        name = "���������� �� - �񴰹�� ���Ǵ� ����";
                        break;
                    case Pineapple.BubbleStandSign:
                        name = "���������� �� - �񴰹�� ���Ǵ� ����";
                        break;
                }
                break;
            case Spongebob.Patrick:
                switch (patrick)
                {
                    case Patrick.Bin:
                        name = "������ �� - ��������";
                        break;
                    case Patrick.Path:
                        name = "������ �� - ��";
                        break;
                    case Patrick.Couch:
                        name = "������ �� - ����";
                        break;
                    case Patrick.Lamp:
                        name = "������ �� - ����";
                        break;
                    case Patrick.Television:
                        name = "������ �� - �ڷ�����";
                        break;
                    case Patrick.Rock:
                        name = "������ �� - ����";
                        break;
                    case Patrick.RockUnderside:
                        name = "������ �� - ���� �Ʒ���";
                        break;
                    case Patrick.RockHinge:
                        name = "������ �� - ���� ��ø";
                        break;
                    case Patrick.WeatherVane:
                        name = "������ �� - ǳ���";
                        break;
                }
                break;
            case Spongebob.Squidward:
                switch (squidward)
                {
                    case Squidward.Bicycle:
                        name = "¡¡���� �� - ������";
                        break;
                    case Squidward.Brow:
                        name = "¡¡���� �� - ����";
                        break;
                    case Squidward.Door:
                        name = "¡¡���� �� - ��";
                        break;
                    case Squidward.DoorAlcove:
                        name = "¡¡���� �� - �� ����";
                        break;
                    case Squidward.DoorKnob:
                        name = "¡¡���� �� - �� ������";
                        break;
                    case Squidward.Ear:
                        name = "¡¡���� �� - ��";
                        break;
                    case Squidward.Head:
                        name = "¡¡���� �� - �Ӹ�";
                        break;
                    case Squidward.Nose:
                        name = "¡¡���� �� - ��";
                        break;
                    case Squidward.holeFrame:
                        name = "¡¡���� �� - �ձ� â�� Ʋ";
                        break;
                    case Squidward.holeWindow:
                        name = "¡¡���� �� - �ձ� â��";
                        break;
                    case Squidward.RearWindow:
                        name = "¡¡���� �� - ��â��";
                        break;
                    case Squidward.RearWindowFrame:
                        name = "¡¡���� �� - ��â�� Ʋ";
                        break;
                    case Squidward.Roof:
                        name = "¡¡���� �� - ����";
                        break;
                    case Squidward.RoofChair:
                        name = "¡¡���� �� - ���� ����";
                        break;
                    case Squidward.Step:
                        name = "¡¡���� �� - ���� �丷";
                        break;
                }
                break;
            case Spongebob.KrustyKrab:
                switch (krustyKrab)
                {
                    case KrustyKrab.Arch:
                        name = "���Ը��� - ��ġ";
                        break;
                    case KrustyKrab.Base:
                        name = "���Ը��� - ���";
                        break;
                    case KrustyKrab.Chimney:
                        name = "���Ը��� - ����";
                        break;
                    case KrustyKrab.Door:
                        name = "���Ը��� - ��";
                        break;
                    case KrustyKrab.DoorFrame:
                        name = "���Ը��� - ��Ʋ";
                        break;
                    case KrustyKrab.DoorHandle:
                        name = "���Ը��� - ��������";
                        break;
                    case KrustyKrab.DumpsterInner:
                        name = "���Ը��� - �������� ����";
                        break;
                    case KrustyKrab.DumpsterLidFace:
                        name = "���Ը��� - �������� �Ѳ�";
                        break;
                    case KrustyKrab.DumpsterLidRim:
                        name = "���Ը��� - �������� �Ѳ� �����ڸ�";
                        break;
                    case KrustyKrab.DumpsterOuter:
                        name = "���Ը��� - �������� �ٱ���";
                        break;
                    case KrustyKrab.DumpsterRim:
                        name = "���Ը��� - �������� �����ڸ�";
                        break;
                    case KrustyKrab.DumpsterWheel:
                        name = "���Ը��� - �������� ����";
                        break;
                    case KrustyKrab.EntranceSignPost:
                        name = "���Ը��� - �Ա� ǥ���� ���";
                        break;
                    case KrustyKrab.FlagRope:
                        name = "���Ը��� - ��� ����";
                        break;
                    case KrustyKrab.Mayo:
                        name = "���Ը��� - �������";
                        break;
                    case KrustyKrab.Nail:
                        name = "���Ը��� - ��";
                        break;
                    case KrustyKrab.holeFrame:
                        name = "���Ը��� - �ձ� â�� Ʋ";
                        break;
                    case KrustyKrab.holeWindow:
                        name = "���Ը��� - �ձ� â��";
                        break;
                    case KrustyKrab.RearDoor:
                        name = "���Ը��� - �Ĺ�";
                        break;
                    case KrustyKrab.RearDoorFrame:
                        name = "���Ը��� - �Ĺ� Ʋ";
                        break;
                    case KrustyKrab.RearDoorPorthole:
                        name = "���Ը��� - �Ĺ� �ձ� â��";
                        break;
                    case KrustyKrab.RearWall:
                        name = "���Ը��� - �ĸ� ��";
                        break;
                    case KrustyKrab.RoofPlank:
                        name = "���Ը��� - ���� ���� �丷";
                        break;
                    case KrustyKrab.SideWallPlank:
                        name = "���Ը��� - ���� ���� �丷";
                        break;
                    case KrustyKrab.SignPole:
                        name = "���Ը��� - ���� ���";
                        break;
                    case KrustyKrab.SignShell:
                        name = "���Ը��� - ���� ���� ������";
                        break;
                    case KrustyKrab.SignLetter:
                        name = "���Ը��� - ���� �۾�";
                        break;
                    case KrustyKrab.Window:
                        name = "���Ը��� - â��";
                        break;
                    case KrustyKrab.WeatherVane:
                        name = "���Ը��� - ǳ���";
                        break;
                    case KrustyKrab.SideWallRope:
                        name = "���Ը��� - ���� �� ����";
                        break;
                    case KrustyKrab.MaritimeFlag:
                        name = "���Ը��� - �ٴ� ���";
                        break;
                }
                break;
            case Spongebob.ChumBucket:
                switch (ChumBucket)
                {
                    case ChumBucket.Door:
                        name = "�ö�ũ�� ���� - ��";
                        break;
                    case ChumBucket.DoorHandle:
                        name = "�ö�ũ�� ���� - �� ������";
                        break;
                    case ChumBucket.DoorWindow:
                        name = "�ö�ũ�� ���� - �� â��";
                        break;
                    case ChumBucket.Glove:
                        name = "�ö�ũ�� ���� - �尩";
                        break;
                    case ChumBucket.Handle:
                        name = "�ö�ũ�� ���� - ������";
                        break;
                    case ChumBucket.HandlePin:
                        name = "�ö�ũ�� ���� - ������ ��";
                        break;
                    case ChumBucket.Letter:
                        name = "�ö�ũ�� ���� - �۾�";
                        break;
                    case ChumBucket.RimLower:
                        name = "�ö�ũ�� ���� - �Ʒ��� �����ڸ�";
                        break;
                    case ChumBucket.RimUpper:
                        name = "�ö�ũ�� ���� - ���� �����ڸ�";
                        break;
                    case ChumBucket.Roof:
                        name = "�ö�ũ�� ���� - ����";
                        break;
                    case ChumBucket.Wall:
                        name = "�ö�ũ�� ���� - ��";
                        break;
                }
                break;
        }

        return name;
    }
}
