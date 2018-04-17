using UnityEngine;
using System.Collections;

public class ProminentFlareTrait : Trait
{
    public ProminentFlareTrait()
    {
        name = "Prominent Flare";
        description = "Evs-1, Def-1, Brth+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Flare Prominent";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion --;
        stats.Defense--;
        stats.Fert += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion++;
        stats.Defense++;
        stats.Fert -= 2;
    }
}
