using UnityEngine;
using System.Collections;

public class PheromonesTrait : Trait
{
    public PheromonesTrait()
    {
        name = "Pheromones";
        description = "Brth+1";
        eduInfo = "Some mamals can produce a chemical substance capable of attracting others of the same species";
        imagePath = "Images/Evolutions/Pheromones";

    }

    public override void OnAdd(Stats stats)
    {
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.fert--;
    }
}
