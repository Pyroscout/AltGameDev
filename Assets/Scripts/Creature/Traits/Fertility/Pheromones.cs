using UnityEngine;
using System.Collections;

public class PheromonesTrait : Trait
{
    public PheromonesTrait()
    {
        name = "Pheromones";
        description = "Brth+1, evs-5, energy+1";
        eduInfo = "Produce a chemical scent capable of attracting others";

        imagePath = "Images/Evolutions/Pheromones";
    }

    public override void OnAdd(Stats stats)
    {
        stats.fert++;
        stats.evs -= 5;

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
        stats.fert--;
        stats.evs += 5;

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
