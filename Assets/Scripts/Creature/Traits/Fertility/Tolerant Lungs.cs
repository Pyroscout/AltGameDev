﻿using UnityEngine;
using System.Collections;

public class TolerantLungsTrait : Trait
{
    public TolerantLungsTrait()
    {
        name = "Tolerant Lungs";
        description = "Brth+1";
        eduInfo = "Some animals have adapted their lungs to be carbon tolerant, allowing them to stay under water for long periods of time.";
        imagePath = "Images/Evolutions/Lungs";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Fert--;
    }
}