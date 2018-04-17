using UnityEngine;

public enum BiomeType { Ocean, Forest, Desert, Mountain, Tundra, COUNT }

public class Biome
{
    public string name;
    int baseHerbSupply;
    public int herbSupply;
    int herbSupplyFactor;
    int baseMeatSupply;
    public int meatSupply;
    int meatSupplyFactor;

    public Biome(string name,
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
        float roll = Random.value * 2;
        int meatSupplyForaged = ((int)roll + 1) * herbSupplyFactor;
        int deltaMeatSupply = meatSupply - meatSupplyForaged;
        if (deltaMeatSupply < 0)
        {
            meatSupplyForaged += deltaMeatSupply;
        }
        meatSupply = Mathf.Max(deltaMeatSupply, 0);
        return meatSupplyForaged;
    }
}
