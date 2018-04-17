using UnityEngine;
using System.Collections;

public class AdvancedMimicryTrait : Trait
{
    public AdvancedMimicryTrait()
    {
        name = "Advanced Mimicry";
        description = "Evs+3";
        eduInfo = "";
        imagePath = "Images/Evolutions/Mimicry Adv";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Evasion += 3;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Evasion -= 3;
    }
}
