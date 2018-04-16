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
        stats.evs--;
        stats.def--;
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs++;
        stats.def++;
        stats.fert--;
    }
}
