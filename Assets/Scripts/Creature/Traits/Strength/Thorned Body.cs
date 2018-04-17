using UnityEngine;
using System.Collections;

public class ThornedBodyTrait : Trait
{
    public ThornedBodyTrait()
    {
        name = "Thorned Body";
        description = "Def+10, Evs-2";
        eduInfo = "Having a thorned body makes a species harder for predators to attack";

        imagePath = "Images/Evolutions/Thorn and Quill";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def += 10;
        stats.evs -= 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def -= 10;
        stats.evs += 2;
    }
}
