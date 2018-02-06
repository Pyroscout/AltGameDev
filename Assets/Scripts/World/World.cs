using System.Collections;
using System.Collections.Generic;
using UnityEngine;

class World
{
    List<Tile> tiles = new List<Tile>();

    public World(int tileCount)
    {
        for(int i = 0; i < tileCount; i++)
        {
            tiles[i] = Tile.randomTile();
        }
    }
}
