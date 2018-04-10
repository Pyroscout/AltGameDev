using UnityEngine;
using System.Collections;

public class PoisonTrait : Trait
{
    public PoisonTrait()
    {
        name = "Poison";
        description = "Increase strength by 1";
        eduInfo = "Some species secrete poison as a method of warding off predators";
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
