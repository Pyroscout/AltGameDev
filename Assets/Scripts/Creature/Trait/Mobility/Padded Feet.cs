using UnityEngine;
using System.Collections;

public class PaddedFeetTrait : Trait
{
    public PaddedFeetTrait()
    {
        name = "Padded Feet";
        description = "Increase mobility by 1";
        eduInfo = "Padded feet can help a creature navigate their environment with ease, or even for stealth attacks on prey";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs--;
    }
}
