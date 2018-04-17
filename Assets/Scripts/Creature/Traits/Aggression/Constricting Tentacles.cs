using UnityEngine;
using System.Collections;

public class ConstrictingTentaclesTrait : Trait
{
    public ConstrictingTentaclesTrait()
    {
        name = "Constricting Tentacles";
        description = "Atk+2, Hunt+2";
        eduInfo = "Prehensile tentacle for catching prey";

        imagePath = "Images/Evolutions/Tentacle";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 2;
        stats.Hunt += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 2;
        stats.Hunt -= 2;
    }
}
