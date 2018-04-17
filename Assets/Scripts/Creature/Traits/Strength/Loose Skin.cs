using UnityEngine;
using System.Collections;

public class LooseSkinTrait : Trait
{
    public LooseSkinTrait()
    {
        name = "Loose Skin";
        description = "Def+5";
        eduInfo = "Loose skin mitigates damage from harming vital organs";

        imagePath = "Images/Evolutions/Loose Skin";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 5;
    }
}
