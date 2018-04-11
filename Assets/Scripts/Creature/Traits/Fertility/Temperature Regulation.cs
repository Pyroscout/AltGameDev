using UnityEngine;
using System.Collections;

public class TemperatureRegulationTrait : Trait
{
    public TemperatureRegulationTrait()
    {
        name = "Temperature Regulation";
        description = "Brth+1";
        eduInfo = "";
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
