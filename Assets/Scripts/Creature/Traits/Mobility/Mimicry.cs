using UnityEngine;
using System.Collections;

public class MimicryTrait : Trait
{
    public MimicryTrait()
    {
        name = "Mimicry";
        description = "Evs+10, def-2";
        eduInfo = "Match the environment in shade and shape to further blend in";

        imagePath = "Images/Evolutions/Mimicry";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion += 10;
        stats.Defense -= 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 10;
        stats.Defense += 2;
    }
}
