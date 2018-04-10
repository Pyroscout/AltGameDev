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

    public Color Color
    {
        get
        {
            return biome.color;
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
        foreach(Creature creature in Creature.creatures)
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
            default:
                this.biome = new Biome("Oops", Color.magenta, 0, 0, 0, 0);
                break;
        }
    }

    public void SetBiomeType(int biomeTypeIndex)
    {
        SetBiomeType((BiomeType)biomeTypeIndex);
    }

    Color32 forestColor = new Color32(34, 139, 34, 255);
    public void SetForest()
    {
        this.biome = new Biome("Forest", forestColor, 600, 6, 600, 6);
        this.biomeType = BiomeType.Forest;
    }

    Color32 desertColor = new Color32(237, 201, 175, 255);
    public void SetDesert()
    {
        this.biome = new Biome("Desert", desertColor, 200, 2, 200, 2);
        this.biomeType = BiomeType.Desert;
    }

    Color32 mountainColor = new Color32(141, 81, 80, 255);
    public void SetMountain()
    {
        this.biome = new Biome("Mountain", mountainColor, 400, 4, 200, 2);
        this.biomeType = BiomeType.Mountain;
    }

    Color32 seaFloorColor = new Color32(194, 178, 128, 255);
    public void SetOcean()
    {
        this.biome = new Biome("Ocean", seaFloorColor, 0, 0, 0, 0);
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
