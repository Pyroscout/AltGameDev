﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class UIManager : MonoBehaviour
{
    public Text phaseLabel;
    public Text timerLabel;

    public Text[] creatureCountLabels;
    
    public Canvas creatureInfoPrefab;

    public void SetupUI()
    {
        HideTimer();
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

    public void UpdatePhase(Phase phase)
    {
        switch (phase)
        {
            case Phase.Migrate:
                phaseLabel.text = "Phase: MIGRATE";
                break;
            case Phase.Reproduce:
                phaseLabel.text = "Phase: REPRODUCE";
                break;
            case Phase.Evolve:
                phaseLabel.text = "Phase: EVOLVE";
                break;
            case Phase.Feed:
                phaseLabel.text = "Phase: FEED";
                break;
        }
    }

    public void HideTimer()
    {
        timerLabel.enabled = false;
    }

    public void ShowTimer()
    {
        timerLabel.enabled = true;
    }

    public void UpdateTimer(int timeLeft)
    {
        timerLabel.text = timeLeft.ToString();
    }
}