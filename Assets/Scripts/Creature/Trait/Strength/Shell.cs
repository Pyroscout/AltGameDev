﻿using UnityEngine;
using System.Collections;

public class ShellTrait : Trait
{
    public ShellTrait()
    {
        name = "Shell";
        description = "Increase strength by 1";
        eduInfo = "A sturdy shell can save a species from deadly attacks";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}