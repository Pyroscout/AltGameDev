using UnityEngine;
using System.Collections;

public class ConstrictingTentaclesTrait : Trait
{
    public ConstrictingTentaclesTrait()
    {
        name = "Constricting Tentacles";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Tentacle";

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
