using UnityEngine;
using System.Collections;

public class LightSkeleTrait : Trait
{
    public LightSkeleTrait()
    {
        name = "Light weight Skeleton";
        description = "Atk-1, Def-2, Evs+2, Hunt+1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk--;
        stats.def-=2;
        stats.evs+=2;
        stats.hunt++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk++;
        stats.def+=2;
        stats.evs-=2;
        stats.hunt--;
    }
}
