using UnityEngine;
using UnityEngine.EventSystems;

public class HexMapEditor : MonoBehaviour
{

    public Color[] colors;
    private BiomeType activeBiome;
    int activeElevation;
    int activeWaterLevel;

    public HexGrid hexGrid;

    void Awake()
    {
        SelectBiome(0);
    }

    void Update()
    {
        if (Input.GetMouseButton(0) &&
            !EventSystem.current.IsPointerOverGameObject())
        {
            HandleInput();
        }
    }

    void HandleInput()
    {
        Ray inputRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(inputRay, out hit))
        {
            EditCell(hexGrid.GetCell(hit.point));
        }
    }

    void EditCell(HexCell cell)
    {
        cell.Biome = activeBiome;
        cell.Elevation = activeElevation;
        //hexGrid.Refresh();
    }

    public void SelectBiome(int index)
    {
        activeBiome = (BiomeType)index;
    }

    public void SetElevation(float elevation)
    {
        activeElevation = (int)elevation;
    }
}