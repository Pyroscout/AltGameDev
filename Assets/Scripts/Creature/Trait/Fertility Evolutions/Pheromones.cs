﻿using UnityEngine;
using System.Collections;

public class PheromonesTrait : Trait
{
    public PheromonesTrait()
    {
        name = "Pheromones";
        description = "Increase survivability by 1";
        eduInfo = "Some mamals can produce a chemical substance capable of attracting others of the same species";
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
