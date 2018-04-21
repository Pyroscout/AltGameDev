using UnityEngine;
using System.Collections;

public class FangsTrait : Trait
{
    public FangsTrait()
    {
        name = "Fangs";
        description = "Atk+5";
        eduInfo = "Specialized teeth for killing prey";

        imagePath = "Images/Evolutions/Fangs";
    }

    public override void OnAdd(Stats stats)
    {
        stats.Attack += 5;
    }

    public override void OnRemove(Stats stats)
    {
        stats.Attack -= 5;
    }
}
