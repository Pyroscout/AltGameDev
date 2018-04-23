using UnityEngine;
using System.Collections;

public class FrontEyesTrait : Trait
{
    public FrontEyesTrait()
    {
        name = "Front Facing Eyes";
        description = "Evs-5, Hunt+10";
        eduInfo = "";
        imagePath = "Images/Evolutions/Front Eyes";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion -= 5;
        stats.Hunt += 10;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion += 5;
        stats.Hunt -= 10;
    }
}
