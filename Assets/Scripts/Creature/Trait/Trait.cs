using UnityEngine.UI;


public abstract class Trait
{
    public string name;
    public string description;
    public string eduInfo;
    public string imagePath;

    public abstract void OnAdd(Stats stats);

    public abstract void OnRemove(Stats stats);

    public override string ToString()
    {
        return name;
    }
}