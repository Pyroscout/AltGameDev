using UnityEngine;
using System.Collections;

public class ThornedBodyTrait : Trait
{
    public ThornedBodyTrait()
    {
        name = "Thorned Body";
        description = "Increase strength by 1";
        eduInfo = "Having a thorned body makes a species harder for predators to attack";

        imagePath = "Images/Evolutions/Thorn and Quill";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}
