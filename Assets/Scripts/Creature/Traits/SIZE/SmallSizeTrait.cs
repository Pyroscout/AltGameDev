using UnityEngine;
using System.Collections;

public class SmallSizeTrait : Trait
{
    public SmallSizeTrait()
    {
        name = "Small Size";
        description = "Sets the size of your creatures to Small";
        eduInfo = "You big boi";
        imagePath = "Images/Evolutions/Small";

    }

    public override void OnAdd(Stats stats)
    {
        stats.size = Stats.Size.small;
        stats.Attack--;
        stats.Defense--;
        stats.Evasion+=2;
        stats.MeatValue += 1;
   
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack++;
        stats.Defense++;
        stats.Evasion-=2;
        stats.MeatValue -= 1;
    }
}
