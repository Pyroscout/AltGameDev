using UnityEngine;
using System.Collections;

public class ShellTrait : Trait
{
    public ShellTrait()
    {
        name = "Shell";
        description = "Def+1";
        eduInfo = "A sturdy shell can save a species from deadly attacks";

        imagePath = "Images/Evolutions/Shell";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}
