using UnityEngine;
using System.Collections;

public class FurCoatTrait : Trait
{
    public FurCoatTrait()
    {
        name = "Fur Coat";
        description = "Brth+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Fur Coat";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Fert--;
    }
}
