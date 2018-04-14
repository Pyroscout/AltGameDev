using UnityEngine;
using System.Collections;

public class SmoothSkinTrait : Trait
{
    public SmoothSkinTrait()
    {
        name = "Smooth Skin";
        description = "Evs+1";
        eduInfo = "Some species rely on sliding as their main method of transportation";

        imagePath = "Images/Evolutions/Smooth Skin";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs--;
    }
}
