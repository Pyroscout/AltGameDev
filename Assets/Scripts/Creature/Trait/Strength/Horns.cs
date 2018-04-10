using UnityEngine;
using System.Collections;

public class HornsTrait : Trait
{
    public HornsTrait()
    {
        name = "Horns";
        description = "Increase strength by 1";
        eduInfo = "Horns are an excellent means of defense against predators";
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
