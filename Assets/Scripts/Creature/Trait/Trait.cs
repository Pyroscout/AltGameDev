using UnityEngine.UI;


public abstract class Trait
{
    //public enum Type {
    //    IncreaseAttack, IncreaseDefense, IncreaseSize,
    //    COUNT
    //}

    public string name;
    public string description;
    public string eduInfo;
    public Image image;

    public abstract void OnAdd(Stats stats);

    public abstract void OnRemove(Stats stats);

    public override string ToString()
    {
        return name;
    }
}