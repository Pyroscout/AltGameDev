using UnityEngine;
using System.Collections;

public class FrontEyesTrait : Trait
{
    public FrontEyesTrait()
    {
        name = "Front Facing Eyes";
        description = "Evs-1, Hunt+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/FrontEyes";

    }

    public override void OnAdd(Stats stats)
    {
        stats.evs--;
        stats.hunt+=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs++;
        stats.hunt-=2;
    }
}
