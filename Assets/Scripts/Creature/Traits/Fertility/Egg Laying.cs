using UnityEngine;
using System.Collections;

public class EggLayingTrait : Trait
{
    public EggLayingTrait()
    {
        name = "Egg Laying";
        description = "Brth+2, def+5, atk-5, hunt-5, energy+1";
        eduInfo = "Some creatures are capable of laying eggs as a method of reproduction";

        imagePath = "Images/Evolutions/Fertility/Egg";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Fert += 2;
        stats.Defense += 5;
        stats.Attack -= 5;
        stats.Hunt -= 5;

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
        stats.Fert -= 2;
        stats.Defense -= 5;
        stats.Attack += 5;
        stats.Hunt += 5;

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
