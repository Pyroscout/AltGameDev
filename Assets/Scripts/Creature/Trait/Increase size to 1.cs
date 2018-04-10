using UnityEngine;
using System.Collections;

public class SizeOneTrait : Trait
{
    public SizeOneTrait()
    {
        name = "Medium Size";
        description = "Sets the size of your creatures to Medium";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        stats.size = stats.sizeOne;
   
    }

    public override void OnRemove(Stats stats)
    {
    }
}
