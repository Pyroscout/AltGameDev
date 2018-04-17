using UnityEngine;
using System.Collections;

public class TemperatureRegulationTrait : Trait
{
    public TemperatureRegulationTrait()
    {
        name = "Temperature Regulation";
        description = "Brth+1, Energy+2";
        eduInfo = "Thermoregulation keeps you adaptable no matter the temperature";

        imagePath = "Images/Evolutions/Temperature";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Fert++;

        int count = 2;

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
        stats.Fert--;

        int count = 2;

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
