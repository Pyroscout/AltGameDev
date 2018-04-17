using UnityEngine;
using System.Collections;

public class FerocityTrait : Trait
{
    public FerocityTrait()
    {
        name = "Ferocity";
        description = "Atk+2, Def+2";
        eduInfo = "";
        imagePath = "Images/Evolutions/Ferocity";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 2;
        stats.Defense += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 2;
        stats.Defense -= 2;
    }
}
