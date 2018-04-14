using UnityEngine;
using System.Collections;

public class GlidingTrait : Trait
{
    public GlidingTrait()
    {
        name = "Gliding";
        description = "Evs+5, Hunt+5";
        eduInfo = "Strechy skin allows for limited gliding";

        imagePath = "Images/Evolutions/Glide";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs += 5;
        stats.hunt += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 5;
        stats.hunt -= 5;
    }
}
