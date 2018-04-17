using UnityEngine;
using System.Collections;

public class RepuliveOdorTrait : Trait
{
    public RepuliveOdorTrait()
    {
        name = "Repulsive Odor";
        description = "Def+7, Evs+2, energy+1";
        eduInfo = "When threatened, release a strong reupulsive odor to make the attacker flee";

        imagePath = "Images/Evolutions/Odor";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def += 7;
        stats.evs += 2;

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
        stats.def -= 7;
        stats.evs -= 2;

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
