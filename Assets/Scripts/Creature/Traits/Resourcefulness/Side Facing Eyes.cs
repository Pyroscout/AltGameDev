using UnityEngine;
using System.Collections;

public class SideEyesTrait : Trait
{
    public SideEyesTrait()
    {
        name = "Side Facing Eyes";
        description = "Evs+10, Hunt-5";
        eduInfo = "";
        imagePath = "Images/Evolutions/Side Eyes";

    }

    public override void OnAdd(Stats stats)
    {

        stats.Evasion+=2;
        stats.Hunt--;
    }

    public override void OnRemove(Stats stats)
    {

        stats.Evasion-=2;
        stats.Hunt++;
    }
}
