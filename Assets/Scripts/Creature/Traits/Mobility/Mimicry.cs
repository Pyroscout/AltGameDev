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
        stats.evs += 10;
        stats.def -= 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 10;
        stats.def += 2;
    }
}
