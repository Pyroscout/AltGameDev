using UnityEngine;
using System.Collections;

public class QuillsTrait : Trait
{
    public QuillsTrait()
    {
        name = "Quills";
        description = "Def+15, Evs-5, Hunt-5";
        eduInfo = "Thick quills make for near impossible defense, at the expense of mobility";

        imagePath = "Images/Evolutions/Thorn and Quill";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Defense += 15;
        stats.Evasion -= 5;
        stats.Hunt -= 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Defense -= 15;
        stats.Evasion += 5;
        stats.Hunt += 5;
    }
}
