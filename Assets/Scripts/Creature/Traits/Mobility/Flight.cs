using UnityEngine;
using System.Collections;

public class FlightTrait : Trait
{
    public FlightTrait()
    {
        name = "Flight";
        description = "Atk-1, Def-1, Evs+3, Hunt+3";
        eduInfo = "";
        imagePath = "Images/Evolutions/Flight";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack--;
        stats.Defense--;
        stats.Evasion += 3;
        stats.Hunt += 3;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack++;
        stats.Defense++;
        stats.Evasion -= 3;
        stats.Hunt -= 3;
    }
}
