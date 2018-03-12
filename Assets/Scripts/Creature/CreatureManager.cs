using UnityEngine;

public class CreatureManager : MonoBehaviour
{
    public Transform creaturePrefab;

    Transform container;

    public void Clear()
    {
        if (container)
        {
            Destroy(container.gameObject);
        }
        container = new GameObject("Creatures Container").transform;
        container.SetParent(transform, false);
    }

    public void Apply()
    {
        
    }

    public void AddCreature(Vector3 position)
    {
        Transform instance = Instantiate(creaturePrefab);
        position.y += instance.localScale.y * 0.5f;
        instance.localPosition = HexMetrics.Perturb(position);
        instance.SetParent(container, false);
    }
}