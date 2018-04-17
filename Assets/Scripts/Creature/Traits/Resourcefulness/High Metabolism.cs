using UnityEngine;
using System.Collections;

public class HighMetabolismTrait : Trait
{
    public HighMetabolismTrait()
    {
        name = "High Metabolism";
        description = "Atk+1, Def+1, Evs-1, Hunt+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/High Met";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
        stats.Defense++;
        stats.Evasion--;
        stats.Hunt++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
        stats.Defense--;
        stats.Evasion++;
        stats.Hunt--;
    }
}
