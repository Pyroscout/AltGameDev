﻿using UnityEngine;
using System.Collections;

public class FangsTrait : Trait
{
    public FangsTrait()
    {
        name = "Fangs";
        description = "Increase attack power by 1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Aggression/Fangs";
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
