using UnityEngine;
using System.Collections;

public class ThumbsTrait : Trait
{
    public ThumbsTrait()
    {
        name = "Opposable Thumbs";
        description = "Evs+1";
        eduInfo = "Opposable thumbs allow for expert climbing and grappling";
        imagePath = "Images/Evolutions/Thumbs";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 5;
        stats.Evasion += 10;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 5;
        stats.Evasion -= 10;
    }
}
