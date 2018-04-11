using UnityEngine;
using System.Collections;

public class RepuliveOdorTrait : Trait
{
    public RepuliveOdorTrait()
    {
        name = "Repulsive Odor";
        description = "Def+1";
        eduInfo = "When some species are threatened, they release a strong reupulsive odor to make the attacker flee";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}
