using UnityEngine;
using System.Collections;

public class GnashingTeethTrait : Trait
{
    public GnashingTeethTrait()
    {
        name = "Gnashing Teeth";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/teeth";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
    }
}
