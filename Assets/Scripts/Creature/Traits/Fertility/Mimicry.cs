using UnityEngine;
using System.Collections;

public class MimicryTrait : Trait
{
    public MimicryTrait()
    {
        name = "Mimicry";
        description = "Evs+2";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs+=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs-=2;
    }
}
