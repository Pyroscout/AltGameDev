using UnityEngine;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    public Text genLabel;
    public Text phaseLabel;
    public Text timerLabel;

    public Text biomeLabel;
    public Text herbCountLabel;
    public Text meatCountLabel;


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
            biomeLabel.text = tile.biome.name;
            herbCountLabel.text = tile.biome.herbSupply.ToString();
            meatCountLabel.text = tile.biome.meatSupply.ToString();
            for(int i = 0; i < Creature.creatures.Count; i++)
            {
                Creature creature = Creature.creatures[i];
                
                creatureCountLabels[i].text = tile.GetCreatureCount(creature.name).ToString();
            }
        }
    }

    public void UpdateGeneration(int genNum)
    {
        genLabel.text = "Generation " + genNum;
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