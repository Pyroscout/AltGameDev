using UnityEngine;
using System.Collections;

public class ConspicuousFlareTrait : Trait
{
    public ConspicuousFlareTrait()
    {
        name = "Conspicuous Flare";
        description = "Evs-10, Def-5, Brth+2";
        eduInfo = "Decorative colors and appealing shapes help lure a mate, at the expense of visibility and some motion";

        imagePath = "Images/Evolutions/Flare Conspicuous";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion -= 10;
        stats.Defense -= 5;
        stats.Fert += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion += 10;
        stats.Defense += 5;
        stats.Fert -= 2;
    }
}
