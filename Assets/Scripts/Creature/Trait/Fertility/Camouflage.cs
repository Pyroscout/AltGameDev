using UnityEngine;
using System.Collections;

public class CamouflageTrait : Trait
{
    public CamouflageTrait()
    {
        name = "Camouflage";
        description = "Increase survivability by 1";
        eduInfo = "Camouflage can save a species from becoming prey, increasing their chances of reproducing";
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
