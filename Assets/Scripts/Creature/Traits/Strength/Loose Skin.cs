using UnityEngine;
using System.Collections;

public class LooseSkinTrait : Trait
{
    public LooseSkinTrait()
    {
        name = "Loose Skin";
        description = "Def+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Loose Skin";

    }

    public override void OnAdd(Stats stats)
    {
        stats.def ++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def --;
    }
}
