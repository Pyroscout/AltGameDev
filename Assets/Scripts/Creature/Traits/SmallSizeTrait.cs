using UnityEngine;
using System.Collections;

public class SmallSizeTrait : Trait
{
    public SmallSizeTrait()
    {
        name = "Small Size";
        description = "Sets the size of your creatures to Small";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = Stats.Size.small;
        stats.atk--;
        stats.def--;
        stats.evs+=2;
        stats.meatVal += 1;
   
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk++;
        stats.def++;
        stats.evs-=2;
        stats.meatVal -= 1;
    }
}
