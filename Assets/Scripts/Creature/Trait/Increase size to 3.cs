using UnityEngine;
using System.Collections;

public class SizeThreeTrait : Trait
{
    public SizeThreeTrait()
    {
        name = "Large Size";
        description = "Sets the size of your creatures to Large";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = stats.sizeThree;
    }

    public override void OnRemove(Stats stats)
    {
    }
}
