using UnityEngine;
using System.Collections;

public class PointedTeethTrait : Trait
{
    public PointedTeethTrait()
    {
        name = "Shredding Teeth";
        description = "Hunt+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/SharpTeeth";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Hunt -= 2;
    }
}
