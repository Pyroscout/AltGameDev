using UnityEngine;

public class Tile
{
    // int sqMI;
    int capacity;

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

    public Tile()
    {
        capacity = 100;
    }

    public void SetBiomeType(BiomeType biome)
    {
        switch (biome)
        {
            case BiomeType.Ocean:
                OceanTile();
                break;
            case BiomeType.Forest:
                ForestTile();
                break;
            case BiomeType.Desert:
                DesertTile();
                break;
            case BiomeType.Mountain:
                MountainTile();
                break;
            default:
                this.biome = new Biome("Oops", Color.magenta, 0, 0);
                break;
        }
    }

    void ForestTile()
    {
        this.biome = new Biome("Forest", Color.green, 6, 6);
        this.biomeType = BiomeType.Forest;
    }

    void DesertTile()
    {
        this.biome = new Biome("Desert", Color.yellow, 2, 2);
        this.biomeType = BiomeType.Desert;
    }

    void MountainTile()
    {
        this.biome = new Biome("Mountain", Color.white, 4, 2);
        this.biomeType = BiomeType.Mountain;
    }

    void OceanTile()
    {
        this.biome = new Biome("Ocean", Color.blue, 0, 0);
        this.biomeType = BiomeType.Ocean;
    }

    public static Tile RandomTile()
    {
        Tile tile = new Tile();
        BiomeType biome = (BiomeType)Calculator.rand.Next((int)BiomeType.COUNT);
        tile.SetBiomeType(biome);
        return tile;
    }
}
