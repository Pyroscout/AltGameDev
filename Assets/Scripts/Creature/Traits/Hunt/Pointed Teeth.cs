using UnityEngine;
using System.Collections;

public class PointedTeethTrait : Trait
{
    public PointedTeethTrait()
    {
        name = "Shredding Teeth";
        description = "Hunt+5";
        eduInfo = "";
        imagePath = "Images/Evolutions/SharpTeeth";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Hunt -= 5;
    }
}
