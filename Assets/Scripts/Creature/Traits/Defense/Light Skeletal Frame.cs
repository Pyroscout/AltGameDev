using UnityEngine;
using System.Collections;

public class LightSkeleTrait : Trait
{
    public LightSkeleTrait()
    {
        name = "Light weight Skeleton";
        description = "Atk-2, Def-5, Evs+5, Hunt+2";
        eduInfo = "Light bones and smaller structure make you faster, but more fragile";

        imagePath = "Images/Evolutions/Light";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk -= 2;
        stats.def -=5;
        stats.evs +=5;
        stats.hunt +=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk += 2;
        stats.def += 5;
        stats.evs -= 5;
        stats.hunt -= 2;
    }
}
