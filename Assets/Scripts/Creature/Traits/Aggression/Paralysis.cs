using UnityEngine;
using System.Collections;

public class ParalysisTrait : Trait
{
    public ParalysisTrait()
    {
        name = "Paralysis";
        description = "Atk+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Paralysis";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
    }
}
