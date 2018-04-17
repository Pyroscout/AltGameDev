using UnityEngine;
using System.Collections;

public class NocturnalTrait : Trait
{
    public NocturnalTrait()
    {
        name = "Nocturnal";
        description = "Evs+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Nocturnal";

    }

    public override void OnAdd(Stats stats)
    {
        stats.evs += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 2;
    }
}
