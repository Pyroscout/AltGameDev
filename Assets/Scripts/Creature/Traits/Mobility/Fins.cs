using UnityEngine;
using System.Collections;

public class FinsTrait : Trait
{
    public FinsTrait()
    {
        name = "Fins";
        description = "Evs+1";
        eduInfo = "Aquatic adaptions allow fast movement along the coast and rivers";
        imagePath = "Images/Evolutions/Fins";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion += 15;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 15;
    }
}
