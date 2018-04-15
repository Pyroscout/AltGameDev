﻿using UnityEngine;
using System.Collections;

public class SideEyesTrait : Trait
{
    public SideEyesTrait()
    {
        name = "Side Facing Eyes";
        description = "Evs+2, Hunt-1";
        eduInfo = "";
        imagePath = "Images/Evolutions/SideEyes";

    }

    public override void OnAdd(Stats stats)
    {

        stats.evs+=2;
        stats.hunt--;
    }

    public override void OnRemove(Stats stats)
    {

        stats.evs-=2;
        stats.hunt++;
    }
}
