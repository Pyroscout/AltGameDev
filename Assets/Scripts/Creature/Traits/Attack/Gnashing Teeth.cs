using UnityEngine;
using System.Collections;

public class GnashingTeethTrait : Trait
{
    public GnashingTeethTrait()
    {
        name = "Gnashing Teeth";
        description = "Atk+10, Energy+1";
        eduInfo = "Oversized teeth for really killing your prey";

        imagePath = "Images/Evolutions/Teeth";
    }

    public override void OnAdd(Stats stats)
    {
        stats.atk += 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon++;
                count--;
            }
            else
            {
                stats.meatCon++;
                count--;
            }
        }
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk -= 10;

        int count = 1;

        while (count > 0)
        {
            if (stats.vegCon > 0 || count > 0)
            {
                stats.vegCon--;
                count--;
            }
            else
            {
                stats.meatCon--;
                count--;
            }
        }
    }
}
