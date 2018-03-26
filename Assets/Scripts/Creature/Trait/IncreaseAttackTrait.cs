using UnityEngine;
using System.Collections;

public class IncreaseAttackTrait : Trait
{
    public IncreaseAttackTrait()
    {
        name = "Increase Attack";
        description = "Increases the creatures attack by 1";
        eduInfo = "Oh wow! You can hit harder!";
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
