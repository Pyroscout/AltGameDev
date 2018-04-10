using UnityEngine;
using System.Collections;

public class LargeSizeTrait : Trait
{
    public LargeSizeTrait()
    {
        name = "Large Size";
        description = "Sets the size of your creatures to Large";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = Stats.Size.large;
    }

    public override void OnRemove(Stats stats)
    {
    }
}
