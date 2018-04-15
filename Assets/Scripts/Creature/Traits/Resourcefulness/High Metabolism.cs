using UnityEngine;
using System.Collections;

public class HighMetabolismTrait : Trait
{
    public HighMetabolismTrait()
    {
        name = "High Metabolism";
        description = "Atk+1, Def+1, Evs-1, Hunt+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/HighMeat";

    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
        stats.def++;
        stats.evs--;
        stats.hunt++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def--;
        stats.evs++;
        stats.hunt--;
    }
}
