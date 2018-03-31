﻿using UnityEngine;
using System.Collections;

public class AppendagesTrait : Trait
{
    public AppendagesTrait()
    {
        name = "Additional Appendages";
        description = "Increase mobility by 1";
        eduInfo = "Additional appendages can help a species maneuver their environment";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs--;
    }
}
