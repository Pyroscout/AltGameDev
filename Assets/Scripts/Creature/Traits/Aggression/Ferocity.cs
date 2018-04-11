using UnityEngine;
using System.Collections;

public class FerocityTrait : Trait
{
    public FerocityTrait()
    {
        name = "Ferocity";
        description = "Atk+2, Def+2";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk += 2;
        stats.def += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk -= 2;
        stats.def -= 2;
    }
}
