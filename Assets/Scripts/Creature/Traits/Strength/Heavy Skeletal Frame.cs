using UnityEngine;
using System.Collections;

public class HeavySkeletalFrame : Trait
{
    public HeavySkeletalFrame()
    {
        name = "Heavy weight skeleton";
        description = "Atk+1, Def+2, Evs-2, Hunt-1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Heavy";

    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
        stats.def+=2;
        stats.evs-=2;
        stats.hunt--;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def-=2;
        stats.evs+=2;
        stats.hunt++;
    }
}
