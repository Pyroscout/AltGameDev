using UnityEngine;
using System.Collections;

public class PointedTeethTrait : Trait
{
    public PointedTeethTrait()
    {
        name = "Shredding Teeth";
        description = "Hunt+2";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.hunt += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.hunt -= 2;
    }
}
