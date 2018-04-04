﻿using UnityEngine;
using System.Collections;

public class VenomTrait : Trait
{
    public VenomTrait()
    {
        name = "Venom";
        description = "Increase attack power by 1";
        eduInfo = "";
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