using UnityEngine;
using System.Collections;

public class DeadlyTalonsTrait : Trait
{
    public DeadlyTalonsTrait()
    {
        name = "Deadly Talons";
        description = "Atk+2, Evs+2";
        eduInfo = "Nimble Talons allow for mobility and offense";

        imagePath = "Images/Evolutions/Talon";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 2;
        stats.Evasion += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 2;
        stats.Evasion -= 2;
    }
}
