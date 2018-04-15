using UnityEngine;
using System.Collections;

public class MediumSizeTrait : Trait
{
    public MediumSizeTrait()
    {
        name = "Medium Size";
        description = "Sets the size of your creatures to Medium";
        eduInfo = "You big boi";
        imagePath = "Images/Evolutions/Medium";

    }

    public override void OnAdd(Stats stats)
    {
        stats.size = Stats.Size.med;
    }

    public override void OnRemove(Stats stats)
    {
    }
}
