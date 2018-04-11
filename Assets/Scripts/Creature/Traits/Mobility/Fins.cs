using UnityEngine;
using System.Collections;

public class FinsTrait : Trait
{
    public FinsTrait()
    {
        name = "Fins";
        description = "Evs+1";
        eduInfo = "Allows a species to propel themselves through bodies of water";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs--;
    }
}
