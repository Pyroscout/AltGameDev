using UnityEngine;
using System.Collections;

public class FrontEyesTrait : Trait
{
    public FrontEyesTrait()
    {
        name = "Front Facing Eyes";
        description = "Evs-1, Hunt+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Front Eyes";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion--;
        stats.Hunt+=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion++;
        stats.Hunt-=2;
    }
}
