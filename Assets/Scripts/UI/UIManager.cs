using UnityEngine;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    public Text genLabel;
    public Text phaseLabel;
    public Text phaseTutorial;
    public Text timerLabel;

    public Text biomeLabel;
    public Text herbCountLabel;
    public Text meatCountLabel;

    public GameObject biomeView;
    public GameObject primalView;


    //Creature theCreature;

    public Text population;


    public Text[] creatureCountLabels;
    
    public Canvas creatureInfoPrefab;

    public void SetupUI()
    {
        HideTimer();
        biomeView.SetActive(true);
        primalView.SetActive(false);
    }

    public void UpdateUI(HexCell selectedCell)
    {
        if (selectedCell != null)
        {
            Tile tile = selectedCell.tile;
            biomeLabel.text = tile.biome.name;
            herbCountLabel.text = "Veggies: " + tile.biome.herbSupply.ToString();
            meatCountLabel.text = "Meats: " + tile.biome.meatSupply.ToString();
            population.text = "Your Population: " + tile.GetCreatureCount(Creature.player.name).ToString();


            int index = 1;
            foreach (Creature creature in Creature.creatures.Values)
            {
                if (creature.name == Creature.player.name)
                {
                    creatureCountLabels[0].text = tile.GetCreatureCount(creature.name).ToString();
                }
                else
                {
                    //creatureCountLabels[index].text = tile.GetCreatureCount(creature.name).ToString();
                    //index++;
                }
            }
        }

        if (true)
        {
            return;
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
                phaseTutorial.text = "Now you can expand your species to other tiles. Click an inhabited tile, then select an arrow to move your creatures in that direction. To see how many creatures are on one tile, check Region Details. Make sure there's enough food left on each tile to support its growing population!";
                break;
            case Phase.Reproduce:
                phaseLabel.text = "Phase: REPRODUCE";
                phaseTutorial.text = "Your population is growing! If there isn't enough food on each tile, some creatures won't make it - Keep this in mind when choosing how many migrate to each tile. Check the Region Details to see your new population, and click Next Phase when you're ready to start the next turn.";
                break;
            case Phase.Evolve:
                phaseLabel.text = "Phase: EVOLVE";
                phaseTutorial.text = "TUTORIAL TEST: EVOLVE";
                break;
            case Phase.Feed:
                phaseLabel.text = "Phase: FORAGE";
                phaseTutorial.text = "The creatures are eating - Check Region Details to see how much they consume.";
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
        timerLabel.text = "Feeding: " + timeLeft.ToString();
    }
}