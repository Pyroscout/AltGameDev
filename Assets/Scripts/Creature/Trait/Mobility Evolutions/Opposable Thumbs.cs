﻿using UnityEngine;
using System.Collections;

public class ThumbsTrait : Trait
{
    public ThumbsTrait()
    {
        name = "Opposable Thumbs";
        description = "Increase mobility by 1";
        eduInfo = "Opposable thumbs can give a species expert climbing ability";
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
