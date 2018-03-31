using UnityEngine;
using System.Collections;

public class FurCoatTrait : Trait
{
    public FurCoatTrait()
    {
        name = "Fur Coat";
        description = "Increase survivability by 1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.fert--;
    }
}
