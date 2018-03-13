﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class UIManager : MonoBehaviour
{
    public Text[] creatureCountLabels;
    
    public Canvas creatureInfoPrefab;

    public void SetupUI()
    {
    }

    public void UpdateUI(HexCell selectedCell)
    {
        if (selectedCell != null)
        {
            Tile tile = selectedCell.tile;
            for(int i = 0; i < Creature.creatures.Count; i++)
            {
                Creature creature = Creature.creatures[i];
                creatureCountLabels[i].text = tile.GetCreatureCount(creature.name).ToString();
            }
        }
    }
}