using UnityEngine;
using System.Collections;

public class QuillsTrait : Trait
{
    public QuillsTrait()
    {
        name = "Quills";
        description = "Def+3, Evs-1, Hunt-1";
        eduInfo = "";
    }

    public override void OnAdd(Stats stats)
    {
        stats.def-=3;
        stats.evs --;
        stats.hunt--;
    }

    public override void OnRemove(Stats stats)
    {
        stats.def+=3;
        stats.evs ++;
        stats.hunt++;
    }
}
