using UnityEngine;
using System.Collections;

public class LooseSkinTrait : Trait
{
    public LooseSkinTrait()
    {
        name = "Loose Skin";
        description = "Def+1";
        eduInfo = "";
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
