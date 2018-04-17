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
        stats.Evasion += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 2;
    }
}
