using UnityEngine;
using System.Collections;

public class HornsTrait : Trait
{
    public HornsTrait()
    {
        name = "Horns";
        description = "Def+10, Atk +5, evs-2, hunt-2";
        eduInfo = "Sturdy horns make for strong attacks, and stronger defenses";

        imagePath = "Images/Evolutions/Horns";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 10;
        stats.Attack += 5;
        stats.Evasion -= 2;
        stats.Hunt -= 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 10;
        stats.Attack -= 5;
        stats.Evasion += 2;
        stats.Hunt += 2;
    }
}
