using UnityEngine;
using System.Collections;

public class LargeSizeTrait : Trait
{
    public LargeSizeTrait()
    {
        name = "Large Size";
        description = "Sets the size of your creatures to Large";
        eduInfo = "You big boi";

        imagePath = "Images/Evolutions/Large";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = Stats.Size.large;
        stats.atk++;
        stats.def++;
        stats.evs-=2;
        stats.meatVal += 2;
        
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def--;
        stats.evs+=2;
        stats.meatVal -= 2;
    }
}
