using UnityEngine;
using System.Collections;

public class becomeCarnivorous : Trait
{
    public becomeCarnivorous()
    {
        name = "Carnivorous";
        description = "Allows you to feed from meat resources";
        eduInfo = "";
        imagePath = "Images/Evolutions/Temp/Carnivore Hex";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
        stats.Defense++;
        stats.Carnivorous = true;
        //Creature.player.isCarnivore = true;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
        stats.Defense--;
        stats.Carnivorous = false;
        //Creature.player.isCarnivore = false;
    }
}
