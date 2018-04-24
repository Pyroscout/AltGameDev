using UnityEngine;
using System.Collections;

public class NocturnalTrait : Trait
{
    public NocturnalTrait()
    {
        name = "Nocturnal";
        description = "Hunt+7, Evs2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Nocturnal";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 7;
        stats.Evasion += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Hunt -= 7;
        stats.Evasion -= 2;
    }
}
