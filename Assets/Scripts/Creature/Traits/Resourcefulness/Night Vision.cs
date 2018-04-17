using UnityEngine;
using System.Collections;

public class NightVisionTrait : Trait
{
    public NightVisionTrait()
    {
        name = "Night Vision";
        description = "Hunt+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Night Vision";

    }

    public override void OnAdd(Stats stats)
    {
        stats.evs ++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs --;
    }
}
