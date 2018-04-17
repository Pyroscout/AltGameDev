using UnityEngine;
using System.Collections;

public class QuillsTrait : Trait
{
    public QuillsTrait()
    {
        name = "Quills";
        description = "Def+3, Evs-1, Hunt-1";
        eduInfo = "";
        imagePath = "Images/Evolutions/ThornandQuil";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense-=3;
        stats.Evasion --;
        stats.Hunt--;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense+=3;
        stats.Evasion ++;
        stats.Hunt++;
    }
}
