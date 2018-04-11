using UnityEngine;
using System.Collections;

public class AppendagesTrait : Trait
{
    public AppendagesTrait()
    {
        name = "Additional Appendages";
        description = "Evs+1";
        eduInfo = "Additional appendages can help a species maneuver their environment";

        imagePath = "Images/Evolutions/Extra Appendages";
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
