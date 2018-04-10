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
   
    }

    public override void OnRemove(Stats stats)
    {
    }
}
