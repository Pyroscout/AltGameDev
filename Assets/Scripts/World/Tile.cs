﻿using UnityEngine;
using System.Collections.Generic;

public class Tile
{
    // int sqMI;
    //int capacity;
    public Dictionary<string, int> creatureCounts = new Dictionary<string, int>();

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

    Color32 forestColor = new Color32(34, 139, 34, 255);
    public void SetForest()
    {
        this.biome = new Biome("Forest", forestColor, 6, 6);
        this.biomeType = BiomeType.Forest;
    }

    Color32 desertColor = new Color32(237, 201, 175, 255);
    public void SetDesert()
    {
        this.biome = new Biome("Desert", desertColor, 2, 2);
        this.biomeType = BiomeType.Desert;
    }

    Color32 mountainColor = new Color32(141, 81, 80, 255);
    public void SetMountain()
    {
        this.biome = new Biome("Mountain", mountainColor, 4, 2);
        this.biomeType = BiomeType.Mountain;
    }

    Color32 seaFloorColor = new Color32(194, 178, 128, 255);
    public void SetOcean()
    {
        this.biome = new Biome("Ocean", seaFloorColor, 0, 0);
        this.biomeType = BiomeType.Ocean;
    }

    public void SetRandomTile()
    {
        BiomeType biome = (BiomeType)(Calculator.rand.Next((int)BiomeType.COUNT-1)+1);
        this.SetBiomeType(biome);
    }
}
