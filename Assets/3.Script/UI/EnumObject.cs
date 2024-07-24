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
                        name = "스폰지밥의 집 - 파인애플 잎";
                        break;
                    case Pineapple.Panel:
                        name = "스폰지밥의 집 - 파인애플 판";
                        break;
                    case Pineapple.PanelBottom:
                        name = "스폰지밥의 집 - 파인애플 아래쪽";
                        break;
                    case Pineapple.PanelTop:
                        name = "스폰지밥의 집 - 파인애플 위쪽 판";
                        break;
                    case Pineapple.Crown:
                        name = "스폰지밥의 집 - 파인애플 뚜껑";
                        break;
                    case Pineapple.holeFrame:
                        name = "스폰지밥의 집 - 둥근 창문 틀";
                        break;
                    case Pineapple.FrontDoor:
                        name = "스폰지밥의 집 - 정문";
                        break;
                    case Pineapple.FrontDoorFrame:
                        name = "스폰지밥의 집 - 정문 프레임";
                        break;
                    case Pineapple.FrontDoorHandle:
                        name = "스폰지밥의 집 - 정문 손잡이";
                        break;
                    case Pineapple.GarageDoor:
                        name = "스폰지밥의 집 - 차고 문";
                        break;
                    case Pineapple.GarageDoorAlcove:
                        name = "스폰지밥의 집 - 차고 문 벽감";
                        break;
                    case Pineapple.holeWindow:
                        name = "스폰지밥의 집 - 둥근 창문";
                        break;
                    case Pineapple.Chimney:
                        name = "스폰지밥의 집 - 굴뚝";
                        break;
                    case Pineapple.ImaginationBox:
                        name = "스폰지밥의 집 - 상상력 상자";
                        break;
                    case Pineapple.Path:
                        name = "스폰지밥의 집 - 길";
                        break;
                    case Pineapple.PathSteppingStone:
                        name = "스폰지밥의 집 - 길 디딤돌";
                        break;
                    case Pineapple.ReefBlower:
                        name = "스폰지밥의 집 - 암초 송풍기";
                        break;
                    case Pineapple.ReefBlowerNozzle:
                        name = "스폰지밥의 집 - 암초 송풍기 노즐";
                        break;
                    case Pineapple.BubbleStand:
                        name = "스폰지밥의 집 - 비눗방울 가판대";
                        break;
                    case Pineapple.BubbleStandContainer:
                        name = "스폰지밥의 집 - 비눗방울 가판대 컨테이너";
                        break;
                    case Pineapple.BubbleStandPlaque:
                        name = "스폰지밥의 집 - 비눗방울 가판대 명패";
                        break;
                    case Pineapple.BubbleStandSign:
                        name = "스폰지밥의 집 - 비눗방울 가판대 간판";
                        break;
                }
                break;
            case Spongebob.Patrick:
                switch (patrick)
                {
                    case Patrick.Bin:
                        name = "뚱이의 집 - 쓰레기통";
                        break;
                    case Patrick.Path:
                        name = "뚱이의 집 - 길";
                        break;
                    case Patrick.Couch:
                        name = "뚱이의 집 - 소파";
                        break;
                    case Patrick.Lamp:
                        name = "뚱이의 집 - 램프";
                        break;
                    case Patrick.Television:
                        name = "뚱이의 집 - 텔레비전";
                        break;
                    case Patrick.Rock:
                        name = "뚱이의 집 - 바위";
                        break;
                    case Patrick.RockUnderside:
                        name = "뚱이의 집 - 바위 아랫면";
                        break;
                    case Patrick.RockHinge:
                        name = "뚱이의 집 - 바위 경첩";
                        break;
                    case Patrick.WeatherVane:
                        name = "뚱이의 집 - 풍향계";
                        break;
                }
                break;
            case Spongebob.Squidward:
                switch (squidward)
                {
                    case Squidward.Bicycle:
                        name = "징징이의 집 - 자전거";
                        break;
                    case Squidward.Brow:
                        name = "징징이의 집 - 눈썹";
                        break;
                    case Squidward.Door:
                        name = "징징이의 집 - 문";
                        break;
                    case Squidward.DoorAlcove:
                        name = "징징이의 집 - 문 벽감";
                        break;
                    case Squidward.DoorKnob:
                        name = "징징이의 집 - 문 손잡이";
                        break;
                    case Squidward.Ear:
                        name = "징징이의 집 - 귀";
                        break;
                    case Squidward.Head:
                        name = "징징이의 집 - 머리";
                        break;
                    case Squidward.Nose:
                        name = "징징이의 집 - 코";
                        break;
                    case Squidward.holeFrame:
                        name = "징징이의 집 - 둥근 창문 틀";
                        break;
                    case Squidward.holeWindow:
                        name = "징징이의 집 - 둥근 창문";
                        break;
                    case Squidward.RearWindow:
                        name = "징징이의 집 - 뒷창문";
                        break;
                    case Squidward.RearWindowFrame:
                        name = "징징이의 집 - 뒷창문 틀";
                        break;
                    case Squidward.Roof:
                        name = "징징이의 집 - 지붕";
                        break;
                    case Squidward.RoofChair:
                        name = "징징이의 집 - 지붕 의자";
                        break;
                    case Squidward.Step:
                        name = "징징이의 집 - 나무 토막";
                        break;
                }
                break;
            case Spongebob.KrustyKrab:
                switch (krustyKrab)
                {
                    case KrustyKrab.Arch:
                        name = "집게리아 - 아치";
                        break;
                    case KrustyKrab.Base:
                        name = "집게리아 - 토대";
                        break;
                    case KrustyKrab.Chimney:
                        name = "집게리아 - 굴뚝";
                        break;
                    case KrustyKrab.Door:
                        name = "집게리아 - 문";
                        break;
                    case KrustyKrab.DoorFrame:
                        name = "집게리아 - 문틀";
                        break;
                    case KrustyKrab.DoorHandle:
                        name = "집게리아 - 문손잡이";
                        break;
                    case KrustyKrab.DumpsterInner:
                        name = "집게리아 - 쓰레기통 안쪽";
                        break;
                    case KrustyKrab.DumpsterLidFace:
                        name = "집게리아 - 쓰레기통 뚜껑";
                        break;
                    case KrustyKrab.DumpsterLidRim:
                        name = "집게리아 - 쓰레기통 뚜껑 가장자리";
                        break;
                    case KrustyKrab.DumpsterOuter:
                        name = "집게리아 - 쓰레기통 바깥쪽";
                        break;
                    case KrustyKrab.DumpsterRim:
                        name = "집게리아 - 쓰레기통 가장자리";
                        break;
                    case KrustyKrab.DumpsterWheel:
                        name = "집게리아 - 쓰레기통 바퀴";
                        break;
                    case KrustyKrab.EntranceSignPost:
                        name = "집게리아 - 입구 표지판 기둥";
                        break;
                    case KrustyKrab.FlagRope:
                        name = "집게리아 - 깃발 밧줄";
                        break;
                    case KrustyKrab.Mayo:
                        name = "집게리아 - 마요네즈";
                        break;
                    case KrustyKrab.Nail:
                        name = "집게리아 - 못";
                        break;
                    case KrustyKrab.holeFrame:
                        name = "집게리아 - 둥근 창문 틀";
                        break;
                    case KrustyKrab.holeWindow:
                        name = "집게리아 - 둥근 창문";
                        break;
                    case KrustyKrab.RearDoor:
                        name = "집게리아 - 후문";
                        break;
                    case KrustyKrab.RearDoorFrame:
                        name = "집게리아 - 후문 틀";
                        break;
                    case KrustyKrab.RearDoorPorthole:
                        name = "집게리아 - 후문 둥근 창문";
                        break;
                    case KrustyKrab.RearWall:
                        name = "집게리아 - 후면 벽";
                        break;
                    case KrustyKrab.RoofPlank:
                        name = "집게리아 - 지붕 나무 토막";
                        break;
                    case KrustyKrab.SideWallPlank:
                        name = "집게리아 - 옆면 나무 토막";
                        break;
                    case KrustyKrab.SignPole:
                        name = "집게리아 - 간판 기둥";
                        break;
                    case KrustyKrab.SignShell:
                        name = "집게리아 - 간판 조개 껍데기";
                        break;
                    case KrustyKrab.SignLetter:
                        name = "집게리아 - 간판 글씨";
                        break;
                    case KrustyKrab.Window:
                        name = "집게리아 - 창문";
                        break;
                    case KrustyKrab.WeatherVane:
                        name = "집게리아 - 풍향계";
                        break;
                    case KrustyKrab.SideWallRope:
                        name = "집게리아 - 측면 벽 밧줄";
                        break;
                    case KrustyKrab.MaritimeFlag:
                        name = "집게리아 - 바다 깃발";
                        break;
                }
                break;
            case Spongebob.ChumBucket:
                switch (ChumBucket)
                {
                    case ChumBucket.Door:
                        name = "플랑크톤 상점 - 문";
                        break;
                    case ChumBucket.DoorHandle:
                        name = "플랑크톤 상점 - 문 손잡이";
                        break;
                    case ChumBucket.DoorWindow:
                        name = "플랑크톤 상점 - 문 창문";
                        break;
                    case ChumBucket.Glove:
                        name = "플랑크톤 상점 - 장갑";
                        break;
                    case ChumBucket.Handle:
                        name = "플랑크톤 상점 - 손잡이";
                        break;
                    case ChumBucket.HandlePin:
                        name = "플랑크톤 상점 - 손잡이 핀";
                        break;
                    case ChumBucket.Letter:
                        name = "플랑크톤 상점 - 글씨";
                        break;
                    case ChumBucket.RimLower:
                        name = "플랑크톤 상점 - 아래쪽 가장자리";
                        break;
                    case ChumBucket.RimUpper:
                        name = "플랑크톤 상점 - 위쪽 가장자리";
                        break;
                    case ChumBucket.Roof:
                        name = "플랑크톤 상점 - 지붕";
                        break;
                    case ChumBucket.Wall:
                        name = "플랑크톤 상점 - 벽";
                        break;
                }
                break;
        }

        return name;
    }
}
