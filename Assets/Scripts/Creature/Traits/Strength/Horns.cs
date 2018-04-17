using UnityEngine;
using System.Collections;

public class HornsTrait : Trait
{
    public HornsTrait()
    {
        name = "Horns";
        description = "Def+1";
        eduInfo = "Horns are an excellent means of defense against predators";
        imagePath = "Images/Evolutions/Horns";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense--;
    }
}
