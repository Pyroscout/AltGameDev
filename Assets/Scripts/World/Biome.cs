using UnityEngine;

public enum BiomeType { Ocean, Forest, Desert, Mountain, COUNT }

public class Biome
{
    public string name;
    int baseHerbSupply;
    int herbSupply;
    int herbSupplyFactor;
    int baseMeatSupply;
    int meatSupply;
    int meatSupplyFactor;

    public Color color;

    public Biome(string name, Color color,
        int herbSupply, int herbSupplyFactor,
        int meatSupply, int meatSupplyFactor)
    {
        this.name = name;
        this.baseHerbSupply = herbSupply;
        this.herbSupply = herbSupply;
        this.herbSupplyFactor = herbSupplyFactor;
        this.baseMeatSupply = meatSupply;
        this.meatSupply = meatSupply;
        this.meatSupplyFactor = meatSupplyFactor;
        this.color = color;
    }

    public void ResetResources()
    {
        herbSupply = baseHerbSupply;
        meatSupply = baseMeatSupply;
    }

    // returns the energy foraged
    public int ForageAttempt()
    {
        float roll = Random.value * 2;
        int herbSupplyForaged = (int)(roll+1) * herbSupplyFactor;
        int deltaHerbSupply = herbSupply - herbSupplyForaged;
        if(deltaHerbSupply < 0)
        {
            herbSupplyForaged += deltaHerbSupply;
        }
        herbSupply = Mathf.Max(deltaHerbSupply, 0);
        return herbSupplyForaged;
    }

    public int HuntAttempt()
    {
        return 0;
    }
}
