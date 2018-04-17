using UnityEngine;
using System.Collections;

public class VenomTrait : Trait
{
    public VenomTrait()
    {
        name = "Venom";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Venom";

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
