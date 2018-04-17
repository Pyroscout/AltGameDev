using UnityEngine;
using System.Collections;

public class PoisonTrait : Trait
{
    public PoisonTrait()
    {
        name = "Poison";
        description = "Def+1";
        eduInfo = "Some species secrete poison as a method of warding off predators";
        imagePath = "Images/Evolutions/Poison";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense--;
    }
}
