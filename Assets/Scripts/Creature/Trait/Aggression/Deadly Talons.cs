using UnityEngine;
using System.Collections;

public class DeadlyTalonsTrait : Trait
{
    public DeadlyTalonsTrait()
    {
        name = "Deadly Talons";
        description = "Increase attack power by 1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Talon";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
    }
}
