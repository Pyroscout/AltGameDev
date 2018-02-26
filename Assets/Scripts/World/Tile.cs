using UnityEngine;
using System.Collections.Generic;

public class Tile
{
    // int sqMI;
    //int capacity;
    Dictionary<string, int> creatureCounts = new Dictionary<string, int>();
    Dictionary<string, Creature> creatures = new Dictionary<string, Creature>();

    Biome biome;
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

    public void Update()
    {
        
    }

    public void AddCreature(string creatureName, int creatureCount)
    {
        int prevCreatureCount = 0;
        creatureCounts.TryGetValue(creatureName, out prevCreatureCount);
        creatureCounts[creatureName] = prevCreatureCount + creatureCount;
    }
    
    public void RemoveCreature(string creatureName, int creatureCount)
    {
        int prevCreatureCount = 0;
        creatureCounts.TryGetValue(creatureName, out prevCreatureCount);
        int deltaCreatureCount = prevCreatureCount - creatureCount;
        if(deltaCreatureCount <= 0)
        {
            creatureCounts.Remove(creatureName);
        }
        else
        {
            creatureCounts[creatureName] = deltaCreatureCount;
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
                this.biome = new Biome("Oops", Color.magenta, 0, 0);
                break;
        }
    }

    public void SetForest()
    {
        this.biome = new Biome("Forest", Color.green, 6, 6);
        this.biomeType = BiomeType.Forest;
    }

    public void SetDesert()
    {
        this.biome = new Biome("Desert", Color.yellow, 2, 2);
        this.biomeType = BiomeType.Desert;
    }

    public void SetMountain()
    {
        this.biome = new Biome("Mountain", Color.white, 4, 2);
        this.biomeType = BiomeType.Mountain;
    }

    public void SetOcean()
    {
        this.biome = new Biome("Ocean", Color.blue, 0, 0);
        this.biomeType = BiomeType.Ocean;
    }

    public void SetRandomTile()
    {
        BiomeType biome = (BiomeType)(Calculator.rand.Next((int)BiomeType.COUNT-1)+1);
        this.SetBiomeType(biome);
    }
}
