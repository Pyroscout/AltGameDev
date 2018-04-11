using UnityEngine;
using System.Collections;

public class AdvancedMimicryTrait : Trait
{
    public AdvancedMimicryTrait()
    {
        name = "Advanced Mimicry";
        description = "Evs+3";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs += 3;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 3;
    }
}
