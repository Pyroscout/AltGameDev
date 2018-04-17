using UnityEngine;
using System.Collections;

public class ShellTrait : Trait
{
    public ShellTrait()
    {
        name = "Shell";
        description = "Def+15, evs-10";
        eduInfo = "A sturdy shell can save a species from deadly attacks";

        imagePath = "Images/Evolutions/Shell";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 15;
        stats.Evasion -= 10;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 15;
        stats.Evasion += 10;
    }
}
