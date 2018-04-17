using UnityEngine;
using System.Collections;

public class CamouflageTrait : Trait
{
    public CamouflageTrait()
    {
        //will probably replace this trait with Nathan's camoflage trait
        name = "Camouflage";
        description = "Evs+5";
        eduInfo = "Skin adapts to local environment, keeping you better hidden";

        imagePath = "Images/Evolutions/Camouflage";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 5;
    }
}
