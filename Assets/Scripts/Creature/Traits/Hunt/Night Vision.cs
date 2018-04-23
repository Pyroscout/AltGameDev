using UnityEngine;
using System.Collections;

public class NightVisionTrait : Trait
{
    public NightVisionTrait()
    {
        name = "Night Vision";
        description = "Hunt+10, Evs+5";
        eduInfo = "";
        imagePath = "Images/Evolutions/Night Vision";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 10;
        stats.Evasion += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion --;
    }
}
