using UnityEngine;
using System.Collections;

public class IncreaseDefenseTrait : Trait
{
    public IncreaseDefenseTrait()
    {
        name = "Increase Defense";
        description = "Increases the creatures defense by 1";
        eduInfo = "Turtle power!";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def--;
    }
}
