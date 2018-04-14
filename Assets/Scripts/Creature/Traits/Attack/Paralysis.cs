﻿using UnityEngine;
using System.Collections;

public class ParalysisTrait : Trait
{
    public ParalysisTrait()
    {
        name = "Paralysis";
        description = "Atk+5, hunt+10, energy+3";
        eduInfo = "Paralysing venom deteriorates your prey's ability to flee";

        imagePath = "Images/Evolutions/Palarysis";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk += 5;
        stats.hunt += 10;

        int count = 3;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                count--;
            }
            else
            {
                stats.meatCon++;
                count--;
            }
        }
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk -= 5;
        stats.hunt -= 10;

        int count = 3;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                count--;
            }
            else
            {
                stats.meatCon--;
                count--;
            }
        }
    }
}
