using UnityEngine;
using System.Collections;

public class ConspicuousFlareTrait : Trait
{
    public ConspicuousFlareTrait()
    {
        name = "Conspicuous Flare";
        description = "Evs-1, Def-1, Brth+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Flare Conspicuous";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion--;
        stats.Defense--;
        stats.Fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion++;
        stats.Defense++;
        stats.Fert--;
    }
}
