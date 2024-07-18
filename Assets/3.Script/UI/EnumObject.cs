using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnumObject
{
    public enum Spongebob
    {
        Pineapple,
        Patrick,
        Squidward,
        KrustyKrab
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

}
