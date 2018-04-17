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
        stats.Attack++;
        stats.Defense+=2;
        stats.Evasion-=2;
        stats.Hunt--;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
        stats.Defense-=2;
        stats.Evasion+=2;
        stats.Hunt++;
    }
}
