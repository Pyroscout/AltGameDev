using UnityEngine;
using System.Collections;

public class ConstrictingTentaclesTrait : Trait
{
    public ConstrictingTentaclesTrait()
    {
        name = "Constricting Tentacles";
        description = "Increase attack power by 1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
    }
}
