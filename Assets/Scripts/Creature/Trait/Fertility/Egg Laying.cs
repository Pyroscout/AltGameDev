using UnityEngine;
using System.Collections;

public class EggLayingTrait : Trait
{
    public EggLayingTrait()
    {
        name = "Egg Laying";
        description = "Increase survivability by 1";
        eduInfo = "Some creatures are capable of laying eggs as a method of reproduction";

        imagePath = "Images/Evolutions/Fertility/Egg";
    }

    public override void OnAdd(Stats stats)
    {
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.fert--;
    }
}
