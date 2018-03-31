﻿using System.Collections.Generic;
using UnityEngine;

public class CreatureManager : MonoBehaviour
{
    public Transform[] creaturePrefabs;

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

    public void AddCreature(HexCell cell, Vector3 center)
    {
        for(int i = 0; i < Creature.creatures.Count; i++)
        {
            Creature creature = Creature.creatures[i];
            if (cell.HasCreature(creature.name))
            {
                Transform instance = Instantiate(creaturePrefabs[i]);
                Vector3 newCenter = center;
                newCenter.y += instance.localScale.y * 0.5f;
                //newCenter.x = newCenter.x - (int)(cell.tile.creatureCounts.Count / 2) + count;
                instance.localPosition = HexMetrics.Perturb(center);
                instance.SetParent(container, false);
            }
        }
    }
}