using UnityEngine;
using System.Collections;

public class MimicryTrait : Trait
{
    public MimicryTrait()
    {
        name = "Mimicry";
        description = "Evs+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Mimicry";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion+=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion-=2;
    }
}
