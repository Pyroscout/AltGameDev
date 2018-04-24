using UnityEngine;
using System.Collections;

public class PaddedFeetTrait : Trait
{
    public PaddedFeetTrait()
    {
        name = "Padded Feet";
        description = "Evs+1";
        eduInfo = "Padded feet can help a creature navigate their environment with ease, or even for stealth attacks on prey";
        imagePath = "Images/Evolutions/Padded Feet";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Hunt += 5;
        stats.Evasion += 10;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Hunt -= 5;
        stats.Evasion -= 10;
    }
}
