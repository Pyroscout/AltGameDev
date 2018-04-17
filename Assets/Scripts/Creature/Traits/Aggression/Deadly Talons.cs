using UnityEngine;
using System.Collections;

public class DeadlyTalonsTrait : Trait
{
    public DeadlyTalonsTrait()
    {
        name = "Deadly Talons";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Talon";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
    }
}
