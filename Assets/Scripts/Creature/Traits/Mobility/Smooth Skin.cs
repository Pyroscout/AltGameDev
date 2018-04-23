using UnityEngine;
using System.Collections;

public class SmoothSkinTrait : Trait
{
    public SmoothSkinTrait()
    {
        name = "Smooth Skin";
        description = "Evs+20, Def+5";
        eduInfo = "Slide as a way of evasion and locomotion";
        imagePath = "Images/Evolutions/Smooth Skin";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 5;
        stats.Evasion += 10;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 5;
        stats.Evasion -= 10;
    }
}
