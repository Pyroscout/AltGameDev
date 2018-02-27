using UnityEngine;

public class HexCell : MonoBehaviour
{
    public HexCoordinates coordinates;

    public Tile tile;

    [SerializeField]
    HexCell[] neighbors;

    public RectTransform uiRect;

    public HexGridChunk chunk;

    public BiomeType Biome
    {
        get
        {
            return tile.BiomeType;
        }
        set
        {
            if(tile.BiomeType == value)
            {
                return;
            }
            tile.SetBiomeType(value);
            Refresh();
        }
    }

    public Color Color
    {
        get
        {
            return tile.Color;
        }
    }

    int waterLevel;
    public int WaterLevel
    {
        get
        {
            return waterLevel;
        }
        set
        {
            if (waterLevel == value)
            {
                return;
            }
            waterLevel = value;
            Refresh();
        }
    }

    public bool IsUnderwater
    {
        get
        {
            return waterLevel > elevation;
        }
    }

    public float WaterSurfaceY
    {
        get
        {
            return
                (waterLevel + HexMetrics.waterElevationOffset) *
                HexMetrics.elevationStep;
        }
    }

    int elevation = int.MinValue;
    public int Elevation
    {
        get
        {
            return elevation;
        }
        set
        {
            if (elevation == value)
            {
                return;
            }
            elevation = value;
            Vector3 position = transform.localPosition;
            position.y +=
                (HexMetrics.SampleNoise(position).y * 2f - 1f) *
                HexMetrics.elevationPerturbStrength;
            transform.localPosition = position;

            Vector3 uiPosition = uiRect.localPosition;
            uiPosition.z = -position.y;
            uiRect.localPosition = uiPosition;
            Refresh();
        }
    }

    public Vector3 Position
    {
        get
        {
            return transform.localPosition;
        }
    }

    void Refresh()
    {
        if (chunk)
        {
            chunk.Refresh();
            for (int i = 0; i < neighbors.Length; i++)
            {
                HexCell neighbor = neighbors[i];
                if (neighbor != null && neighbor.chunk != chunk)
                {
                    neighbor.chunk.Refresh();
                }
            }
        }
    }

    public HexCell GetNeighbor(HexDirection direction)
    {
        return neighbors[(int)direction];
    }

    public void SetNeighbor(HexDirection direction, HexCell cell)
    {
        neighbors[(int)direction] = cell;
        cell.neighbors[(int)direction.Opposite()] = this;
    }

    public HexEdgeType GetEdgeType(HexDirection direction)
    {
        return HexMetrics.GetEdgeType(elevation, neighbors[(int)direction].elevation);
    }

    public HexEdgeType GetEdgeType(HexCell otherCell)
    {
        return HexMetrics.GetEdgeType(elevation, otherCell.elevation);
    }

    public void DefaultTileSetup()
    {
        Tile tile = new Tile();
        if(isOcean())
        {
            this.waterLevel = 1;
            tile.SetOcean();
        } else
        {
            tile.SetRandomTile();
        }
        this.tile = tile;
    }

    bool isOcean()
    {
        bool ocean = Mathf.Abs(coordinates.Z) >= HexMetrics.cellCountZ / 2-1;
        ocean = ocean || Mathf.Abs(coordinates.X) + Mathf.Abs(coordinates.Y) >= HexMetrics.cellCountX - 2;
        if(HexMetrics.cellCountX % 2 == 1)
        {
            ocean = ocean || coordinates.X - coordinates.Y == HexMetrics.cellCountX - 3;
        }
        else
        {
            ocean = ocean || coordinates.Y - coordinates.X == HexMetrics.cellCountX - 3;
        }
        return ocean;
    }
}