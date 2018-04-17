﻿using UnityEngine;
using System.Collections;

public class GlidingTrait : Trait
{
    public GlidingTrait()
    {
        name = "Gliding";
        description = "Evs+1, Hunt+1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Glide";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion ++;
        stats.Hunt ++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion--;
        stats.Hunt--;
    }
}
