﻿using UnityEngine;
using System.Collections;

public class VenomTrait : Trait
{
    public VenomTrait()
    {
        name = "Venom";
        description = "Atk+2, Hunt+5, Energy+1";
        eduInfo = "Painful venom inhibits your prey's ability to flee";

        imagePath = "Images/Evolutions/Venom";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 2;
        stats.Hunt += 5;

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
        stats.Attack -= 2;
        stats.Hunt -= 5;

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
