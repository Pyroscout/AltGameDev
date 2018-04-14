using UnityEngine;
using System.Collections;

public class TolerantLungsTrait : Trait
{
    public TolerantLungsTrait()
    {
        name = "Tolerant Lungs";
        description = "Evs+5, Def+5";
        eduInfo = "Carbon tolerant lungs allow for prolonged submersion without breathing";
        
        imagePath = "Images/Evolutions/Lungs";
    }

    public override void OnAdd(Stats stats)
    {
        stats.evs += 5;
        stats.def += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.evs -= 5;
        stats.def -= 5;
    }
}
