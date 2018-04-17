using UnityEngine;
using System.Collections;

public class PoisonTrait : Trait
{
    public PoisonTrait()
    {
        name = "Poison";
        description = "Def+10, Evs+5, Energy +2";
        eduInfo = "Secrete poison as a method of warding off predators";

        imagePath = "Images/Evolutions/Poison";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def += 10;
        stats.evs += 5;

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
        stats.def -= 10;
        stats.evs -= 5;

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
