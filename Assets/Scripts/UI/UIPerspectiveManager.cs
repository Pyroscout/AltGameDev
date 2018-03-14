using UnityEngine;
using UnityEngine.UI;

public class UIPerspectiveManager : MonoBehaviour
{
    public MigrationMenu migrationMenu;

    public Toggle arrowPrefab;
    Transform arrowContainer;

    public void ClearArrows()
    {
        if (arrowContainer)
        {
            Destroy(arrowContainer.gameObject);
        }
        arrowContainer = new GameObject("Arrow Container").transform;
        arrowContainer.SetParent(transform, false);
    }

    public void PlaceArrows(HexCell cell)
    {
        for (HexDirection d = HexDirection.NE; d <= HexDirection.NW; d++)
        {
            PlaceArrow(d, cell);
        }
    }

    void PlaceArrow(HexDirection direction, HexCell cell)
    {
        HexCell neighbor = cell.GetNeighbor(direction);
        if(neighbor == null || neighbor.IsUnderwater)
        {
            return;
        }
        EdgeVertices e = new EdgeVertices(
            cell.Position + HexMetrics.GetFirstSolidCorner(direction),
            cell.Position + HexMetrics.GetSecondSolidCorner(direction));

        Vector3 center = new Vector3(e.v3.x, e.v3.z, -e.v3.y - 0.1f);

        Toggle instance = Instantiate(arrowPrefab);
        instance.onValueChanged.AddListener(delegate { migrationMenu.Open(neighbor, cell); });

        instance.transform.localPosition = HexMetrics.PerturbPerspective(center);
        instance.transform.localRotation = Quaternion.Euler(0f, 0f, 60f - 60f * (float)direction);
        instance.transform.SetParent(arrowContainer, false);
    }
}
