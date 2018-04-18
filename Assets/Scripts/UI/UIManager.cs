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

    public Text speciesType;

    //Creature theCreature;

    public Text population;


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
            herbCountLabel.text = "Veggies: " + tile.biome.herbSupply.ToString();
            meatCountLabel.text = "Meats: " + tile.biome.meatSupply.ToString();
            population.text = "Population: " + Creature.player.population.ToString();

            int index = 1;
            foreach (Creature creature in Creature.creatures.Values)
            {
                if (creature.name == Creature.player.name)
                {
                    creatureCountLabels[0].text = tile.GetCreatureCount(creature.name).ToString();
                }
                else
                {
                    creatureCountLabels[index].text = tile.GetCreatureCount(creature.name).ToString();
                    //index++;
                }
            }
        }

        if (true)
        {
            return;
        }

        //if (theCreature.stats.isherbivore == true)
        //{
         //   speciesType.text = "Type: Herbivorous";
        //}
        //if (theCreature.stats.iscarnivore == true)
        //{
        //    speciesType.text = "Type: Carnivorous";
        //}
        //if (theCreature.stats.isherbivore == true && theCreature.stats.iscarnivore == true)
        //{
        //    speciesType.text = "Type: Omnivorous";
        //}
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
                phaseLabel.text = "Phase: FORAGE";
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