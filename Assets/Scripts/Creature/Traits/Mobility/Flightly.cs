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
        stats.evs += 10;
        stats.hunt += 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                stats.meatVal++;
                count--;
            }
            else
            {
                stats.meatCon++;
                stats.meatVal++;
                count--;
            }
        }
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 10;
        stats.hunt -= 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                stats.meatVal--;
                count--;
            }
            else
            {
                stats.meatCon--;
                stats.meatVal--;
                count--;
            }
        }
    }
}
