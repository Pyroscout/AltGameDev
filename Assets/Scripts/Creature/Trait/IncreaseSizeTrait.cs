using UnityEngine;
using System.Collections;

public class IncreaseSizeTrait : Trait
{
    public IncreaseSizeTrait()
    {
        name = "Increase Size";
        description = "Increases the creatures size by 1";
        eduInfo = "You big boi";
    }

    public override void OnAdd(Stats stats)
    {
        Stats.Size size = stats.size;
        if((int)size < 3)
        {
            stats.size = (Stats.Size)((int)size + 1);
        }
    }

    public override void OnRemove(Stats stats)
    {
        Stats.Size size = stats.size;
        if ((int)size > 1)
        {
            stats.size = (Stats.Size)((int)size - 1);
        }
    }
}
