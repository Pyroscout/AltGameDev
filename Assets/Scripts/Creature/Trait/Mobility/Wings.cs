using UnityEngine;
using System.Collections;

public class WingsTrait : Trait
{
    public WingsTrait()
    {
        name = "Wings";
        description = "Increase mobility by 1";
        eduInfo = "Wings allow creatures to maneuver through the air as a means of mobility";

        imagePath = "Images/Evolutions/Wings";
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
