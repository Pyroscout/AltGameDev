using UnityEngine;
using System.Collections;

public class ProminentFlareTrait : Trait
{
    public ProminentFlareTrait()
    {
        name = "Prominent Flare";
        description = "Evs-14, Def-7, Brth+3";
        eduInfo = "Flashy colors and outrageous shapes attract many mates, and many predators";

        imagePath = "Images/Evolutions/Flare Prominent";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion -= 14;
        stats.Defense -= 7;
        stats.Fert += 3;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion += 14;
        stats.Defense += 7;
        stats.Fert -= 3;
    }
}
