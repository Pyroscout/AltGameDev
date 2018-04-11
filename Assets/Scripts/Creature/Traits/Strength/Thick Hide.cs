using UnityEngine;
using System.Collections;

public class ThickHideTrait : Trait
{
    public ThickHideTrait()
    {
        name = "Tough Hide";
        description = "Def+1";
        eduInfo = "Tough hides can protect species from various hazards";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}
