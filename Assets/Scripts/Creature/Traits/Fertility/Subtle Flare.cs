using UnityEngine;
using System.Collections;

public class SubtleFlareTrait : Trait
{
    public SubtleFlareTrait()
    {
        name = "Subtle Flare";
        description = "Evs-7, Brth +1";
        eduInfo = "Decorative colors help court mates, in exchange for standing out";

        imagePath = "Images/Evolutions/Flare Subtle";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs -= 7;
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs += 7;
        stats.fert--;
    }
}
