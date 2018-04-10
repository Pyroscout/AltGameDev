using UnityEngine;
using System.Collections;

public class SizeTwoTrait : Trait
{
    public SizeTwoTrait()
    {
        name = "Small Size";
        description = "Sets the size of your creatures to small";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = stats.sizeTwo;
    }

    public override void OnRemove(Stats stats)
    {
    }
}
