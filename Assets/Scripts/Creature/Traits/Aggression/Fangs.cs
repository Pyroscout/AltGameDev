using UnityEngine;
using System.Collections;

public class FangsTrait : Trait
{
    public FangsTrait()
    {
        name = "Fangs";
        description = "Atk+1";
        eduInfo = "";

        imagePath = "Images/Evolutions/Fangs";

    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack++;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack--;
    }
}
