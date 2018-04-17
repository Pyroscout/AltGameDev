using UnityEngine;
using System.Collections;

public class ThickHideTrait : Trait
{
    public ThickHideTrait()
    {
        name = "Tough Hide";
        description = "Def+2";
        eduInfo = "Thick skin prevents surface damage from piercing the epidermis";

        imagePath = "Images/Evolutions/Hide";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 2;
    }
}
