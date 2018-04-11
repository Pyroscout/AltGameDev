using UnityEngine;
using System.Collections;

public class ClawsTrait : Trait
{
    public ClawsTrait()
    {
        name = "Claws";
        description = "Atk+1, Def+1,";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def--;
    }
}
