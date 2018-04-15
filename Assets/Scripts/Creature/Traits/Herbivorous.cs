using UnityEngine;
using System.Collections;

public class becomeHerbivorous : Trait
{
    public becomeHerbivorous()
    {
        name = "Become Herbivorous";
        description = "Allows you to feed from veggie resources";
        eduInfo = "";
        imagePath = "Images/Evolutions/HerbavoreHex";

    }

    public override void OnAdd(Stats stats)
    {
        stats.atk++;
        stats.def++;
        stats.isherbivore = true;
    }

    public override void OnRemove(Stats stats)
    {
        stats.atk--;
        stats.def--;
        stats.isherbivore = false;
    }
}
