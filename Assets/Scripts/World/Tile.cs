using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

class Tile
{
    // int sqMI;
    int capacity;

    Biome biome;

    public Tile()
    {
        capacity = 100;
    }

    public static Tile forestTile()
    {
        Tile tile = new Tile();
        tile.biome = new Biome("Forest", 70, 100, 2.0);
        return tile;
    }

    public static Tile desertTile()
    {
        Tile tile = new Tile();
        tile.biome = new Biome("Desert", 100, 40, 1.4);
        return tile;
    }

    public static Tile tundraTile()
    {
        Tile tile = new Tile();
        tile.biome = new Biome("Tundra", 7, 70, 1.6);
        return tile;
    }

    public static Tile randomTile()
    {
        BiomeType biome = (BiomeType)Calculator.rand.Next((int)BiomeType.COUNT);
        switch (biome)
        {
            case BiomeType.Forest:
                return forestTile();
            case BiomeType.Desert:
                return desertTile();
            case BiomeType.Tundra:
                return tundraTile();
            default:
                return new Tile();
        }
    }
}
