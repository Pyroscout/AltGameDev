using UnityEngine;
using System.Collections;

public class SubtleFlareTrait : Trait
{
    public SubtleFlareTrait()
    {
        name = "Subtle Flare";
        description = "Evs-1. Brth +1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Flare Subtle";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion --;
        stats.Fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion++;
        stats.Fert--;
    }
}
