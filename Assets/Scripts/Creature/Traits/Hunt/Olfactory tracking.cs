using UnityEngine;
using System.Collections;

public class OlfactoryTrait : Trait
{
    public OlfactoryTrait()
    {
        name = "Olfactory Tracking";
        description = "Hunt+15";
        eduInfo = "";
        imagePath = "Images/Evolutions/olfactory";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 15;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Hunt -= 15;
    }
}
