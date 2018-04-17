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
        stats.atk += 5;
        stats.def += 5;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                stats.meatVal++;
                count--;
            }
            else
            {
                stats.meatCon++;
                stats.meatVal++;
                count--;
            }
        }
        
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk -= 5;
        stats.def -= 5;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                stats.meatVal--;
                count--;
            }
            else
            {
                stats.meatCon--;
                stats.meatVal--;
                count--;
            }
        }
    }
}
