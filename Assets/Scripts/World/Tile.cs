using UnityEngine;
using System.Collections.Generic;

public class Tile
{
    // int sqMI;
    //int capacity;
    public Dictionary<string, int> creatureCounts = new Dictionary<string, int>();
    public Dictionary<string, int> energyRequiredCounts = new Dictionary<string, int>();

    public HexCell cell;

    public Biome biome;
    BiomeType biomeType;
    public BiomeType BiomeType
    {
        get
        {
            return biomeType;
        }
    }

    public Tile(HexCell cell)
    {
        this.cell = cell;
    }

    public void Update()
    {
        
    }

    public void AddCreature(Creature creature, int count)
    {
        int prevCreatureCount = GetCreatureCount(creature.name);
        creatureCounts[creature.name] = prevCreatureCount + count;
        creature.tilesOccupied[this.ToString()] = this;
    }
    
    public void RemoveCreature(Creature creature, int creatureCount)
    {
        int prevCreatureCount = GetCreatureCount(creature.name);
        int deltaCreatureCount = prevCreatureCount - creatureCount;
        if(deltaCreatureCount <= 0)
        {
            creatureCounts.Remove(creature.name);
            creature.tilesOccupied.Remove(this.ToString());
        }
        else
        {
            creatureCounts[creature.name] = deltaCreatureCount;
        }
    }

    public int GetCreatureCount(string creatureName)
    {
        int creatureCount = 0;
        creatureCounts.TryGetValue(creatureName, out creatureCount);
        return creatureCount;
    }

    public bool HasCreature(string creatureName)
    {
        int count = GetCreatureCount(creatureName);
        return count > 0;
    }

    public void SetEnergyRequiredCount(string creatureName, int energyRequiredRemaining)
    {
        energyRequiredCounts[creatureName] = energyRequiredRemaining;
    }

    public int GetEnergyRequiredCount(string creatureName)
    {
        int energyRequired = 0;
        energyRequiredCounts.TryGetValue(creatureName, out energyRequired);
        return energyRequired;
    }

    public void KillUnfedCreatrues()
    {
        foreach(Creature creature in Creature.creatures.Values)
        {
            int unfedEnergy = GetEnergyRequiredCount(creature.name);
            int deathCount = unfedEnergy / (int)creature.stats.size;
            RemoveCreature(creature, deathCount);
        }
    }

    public void SetBiomeType(BiomeType biome)
    {
        switch (biome)
        {
            case BiomeType.Ocean:
                SetOcean();
                break;
            case BiomeType.Forest:
                SetForest();
                break;
            case BiomeType.Desert:
                SetDesert();
                break;
            case BiomeType.Mountain:
                SetMountain();
                break;
            case BiomeType.Tundra:
                SetTundra();
                break;
            default:
                break;
        }
    }

    public void SetBiomeType(int biomeTypeIndex)
    {
        SetBiomeType((BiomeType)biomeTypeIndex);
    }
    
    public void SetForest()
    {
        this.biome = new Biome("Forest", 600, 6, 600, 6);
        this.biomeType = BiomeType.Forest;
    }
    
    public void SetDesert()
    {
        this.biome = new Biome("Desert", 200, 2, 200, 2);
        this.biomeType = BiomeType.Desert;
    }
    
    public void SetMountain()
    {
        this.biome = new Biome("Mountain", 400, 4, 200, 2);
        this.biomeType = BiomeType.Mountain;
    }
    
    public void SetTundra()
    {
        this.biome = new Biome("Tundra", 300, 3, 300, 3);
        this.biomeType = BiomeType.Tundra;
    }
    
    public void SetOcean()
    {
        this.biome = new Biome("Ocean", 0, 0, 0, 0);
        this.biomeType = BiomeType.Ocean;
    }

    public void SetRandomTile()
    {
        BiomeType biome = (BiomeType)(Calculator.rand.Next((int)BiomeType.COUNT-1)+1);
        this.SetBiomeType(biome);
    }

    public override string ToString()
    {
        return cell.coordinates.ToString();
    }
}
