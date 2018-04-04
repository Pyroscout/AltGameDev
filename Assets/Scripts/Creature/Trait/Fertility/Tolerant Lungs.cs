using UnityEngine;
using System.Collections;

public class TolerantLungsTrait : Trait
{
    public TolerantLungsTrait()
    {
        name = "Tolerant Lungs";
        description = "Increases survivability by 1";
        eduInfo = "Some animals have adapted their lungs to be carbon tolerant, allowing them to stay under water for long periods of time.";
    }

    public override void OnAdd(Stats stats)
    {
        stats.fert++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.fert--;
    }
}
