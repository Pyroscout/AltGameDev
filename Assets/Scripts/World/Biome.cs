using UnityEngine;

public enum BiomeType { Ocean, Forest, Desert, Mountain, COUNT }

class Biome
{
    public string name;
    //int temperature;
    int herbSupply;
    int meatSupply;
    //double herbGrowthFactor;
    public Color color;

    public Biome(string name, Color color, int herbSupply, int meatSupply)
    {
        this.name = name;
        this.herbSupply = herbSupply;
        this.meatSupply = meatSupply;
        this.color = color;
    }
}
