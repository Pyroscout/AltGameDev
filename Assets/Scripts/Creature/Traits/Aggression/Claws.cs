﻿using UnityEngine;
using System.Collections;

public class ClawsTrait : Trait
{
    public ClawsTrait()
    {
        name = "Claws";
        description = "Atk+2, Def+2,";
        eduInfo = "Sharp claws make you a more formidable creature";

        imagePath = "Images/Evolutions/Claws";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk += 2;
        stats.def += 2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk -= 2;
        stats.def -= 2;
    }
}
