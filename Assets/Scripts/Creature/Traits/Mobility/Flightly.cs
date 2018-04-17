using UnityEngine;
using System.Collections;

public class FlightlyTrait : Trait
{
    public FlightlyTrait()
    {
        name = "Flightly";
        description = "Evs+10, hunt+10, Energy+1";
        eduInfo = "Flightly wings allow for limited flight";

        imagePath = "Images/Evolutions/Flightish";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion += 10;
        stats.Hunt += 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                stats.MeatValue++;
                count--;
            }
            else
            {
                stats.meatCon++;
                stats.MeatValue++;
                count--;
            }
        }
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 10;
        stats.Hunt -= 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                stats.MeatValue--;
                count--;
            }
            else
            {
                stats.meatCon--;
                stats.MeatValue--;
                count--;
            }
        }
    }
}
