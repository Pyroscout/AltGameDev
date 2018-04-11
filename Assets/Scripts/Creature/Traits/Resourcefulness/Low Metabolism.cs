﻿using UnityEngine;
using System.Collections;

public class LowMetabolismTrait : Trait
{
    public LowMetabolismTrait()
    {
        name = "Low Metabolism";
        description = "Atk-1, Def-1, Evs-1, Hunt-1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk--;
        stats.def--;
        stats.evs--;
        stats.hunt--;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk++;
        stats.def++;
        stats.evs++;
        stats.hunt++;
    }
}
