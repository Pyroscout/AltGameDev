﻿using UnityEngine;
using System.Collections;

public class FlightTrait : Trait
{
    public FlightTrait()
    {
        name = "Flight";
        description = "Evs+15, hunt+15, atk-2, def-2, Energy+2";
        eduInfo = "You're flying!";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk -= 2;
        stats.def -= 2;
        stats.evs += 15;
        stats.hunt += 15;

        int count = 2;

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
        stats.atk += 2;
        stats.def += 2;
        stats.evs -= 15;
        stats.hunt -= 15;

        int count = 2;

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
