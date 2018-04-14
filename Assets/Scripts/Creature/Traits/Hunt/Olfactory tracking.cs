using UnityEngine;
using System.Collections;

public class OlfactoryTrait : Trait
{
    public OlfactoryTrait()
    {
        name = "Olfactory Tracking";
        description = "Hunt+1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.hunt++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.hunt--;
    }
}
