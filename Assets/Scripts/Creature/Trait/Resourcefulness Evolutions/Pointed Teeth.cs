using UnityEngine;
using System.Collections;

public class PointedTeethTrait : Trait
{
    public PointedTeethTrait()
    {
        name = "Pointed Teeth";
        description = "Increase mobility by 1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
    }

    public override void OnRemove(Stats stats)
    {
    }
}
