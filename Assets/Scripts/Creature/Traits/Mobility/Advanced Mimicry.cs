using UnityEngine;
using System.Collections;

public class AdvancedMimicryTrait : Trait
{
    public AdvancedMimicryTrait()
    {
        name = "Advanced Mimicry";
        description = "Evs+15, def-5";
        eduInfo = "Bear the uncanny resemblance to your environment, or a predator, and evade capture";

        imagePath = "Images/Evolutions/Mimicry Adv";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs += 15;
        stats.def -= 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 15;
        stats.def += 5;
    }
}
