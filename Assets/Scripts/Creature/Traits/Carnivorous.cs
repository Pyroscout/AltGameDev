using UnityEngine;
using System.Collections;

public class becomeCarnivorous : Trait
{
    public becomeCarnivorous()
    {
        name = "Become Carnivorous";
        description = "Allows you to feed from meat resources";
        eduInfo = "";
        imagePath = "Images/Evolutions/CarnivoreHex";

    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
        stats.def++;
        stats.iscarnivore = true;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def--;
        stats.iscarnivore = false;
    }
}
