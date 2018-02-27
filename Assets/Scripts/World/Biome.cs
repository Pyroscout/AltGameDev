using UnityEngine;

public enum BiomeType { Ocean, Forest, Desert, Mountain, COUNT }

public class Biome
{
    public string name;
    int baseHerbSupply;
    int herbSupply;
    int baseMeatSupply;
    int meatSupply;
    public Color color;
    //double herbGrowthFactor;
    //int temperature;

    public Biome(string name, Color color, int herbSupply, int meatSupply)
    {
        this.name = name;
        this.baseHerbSupply = herbSupply;
        this.herbSupply = herbSupply;
        this.baseMeatSupply = meatSupply;
        this.meatSupply = meatSupply;
        this.color = color;
    }

    public void ResetResources()
    {
        herbSupply = baseHerbSupply;
        meatSupply = baseMeatSupply;
    }

    // returns the unfed population count
    public int ForageAttempt(int population, int vegConsumRate)
    {
        int hunger = population * vegConsumRate;
        int deltaHerb = herbSupply - hunger;
        if(deltaHerb > 0)
        {
            herbSupply = deltaHerb;
            return 0;
        }
        // more hunger than supply
        herbSupply = 0;
        return Mathf.Abs(deltaHerb) / vegConsumRate;
    }
}
