using UnityEngine;
using System.Collections;

public class LowMetabolismTrait : Trait
{
    public LowMetabolismTrait()
    {
        name = "Low Metabolism";
        description = "Atk-5, Def-5, Evs-5, Hunt-5, Energy -1";
        eduInfo = "";
        imagePath = "Images/Evolutions/Low Met";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack -= 5;
        stats.Defense -= 5;
        stats.Evasion -= 5;
        stats.Hunt -= 5;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                stats.MeatValue--;
                count--;
            }
            else
            {
                stats.meatCon--;
                stats.MeatValue--;
                count--;
            }
        }
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack += 5;
        stats.Defense += 5;
        stats.Evasion += 5;
        stats.Hunt += 5;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                stats.MeatValue++;
                count--;
            }
            else
            {
                stats.meatCon++;
                stats.MeatValue++;
                count--;
            }
        }
    }
}
