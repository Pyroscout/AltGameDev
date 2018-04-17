using UnityEngine;
using System.Collections;

public class FerocityTrait : Trait
{
    public FerocityTrait()
    {
        name = "Ferocity";
        description = "Atk+5, Def+5, Energy+1";
        eduInfo = "Danger throws you into hyperaggression";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 5;
        stats.Defense += 5;

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

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 5;
        stats.Defense -= 5;

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
}
