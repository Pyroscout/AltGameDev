using UnityEngine;
using System.Collections;

public class ClawsTrait : Trait
{
    public ClawsTrait()
    {
        name = "Claws";
        description = "Atk+1, Def+1,";
        eduInfo = "";

        imagePath = "Images/Evolutions/Claws";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
        stats.Defense++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
        stats.Defense--;
    }
}
