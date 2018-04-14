﻿using UnityEngine;
using System.Collections;

public class GnashingTeethTrait : Trait
{
    public GnashingTeethTrait()
    {
        name = "Gnashing Teeth";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Aggression/Teeth";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
    }
}