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
        stats.Attack -= 2;
        stats.Defense -=5;
        stats.Evasion +=5;
        stats.Hunt +=2;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack += 2;
        stats.Defense += 5;
        stats.Evasion -= 5;
        stats.Hunt -= 2;
    }
}
