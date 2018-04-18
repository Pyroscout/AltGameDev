using UnityEngine;
using UnityEngine.UI;

public class DisplayGameInfo : MonoBehaviour
{
    public GameObject InfoCanvas;

    public GameObject wing2;
    public GameObject totem;
    public GameObject returnbutton;
    public GameObject leaves;
    public GameObject next;

    public GameObject Score;
    public GameObject SettingsButton;

    public GameObject EvolutionsCanvas;
    public GameObject Evo1;
    public GameObject Evo2;
    public GameObject Evo3;
    public GameObject Evo4;

    public Text traitName;
    public Text traitDesc;
    public Text SpeciesType;

    public GameObject Herbivorous;
    public GameObject Carnivorous;
    public GameObject Omnivorous;

    public Text AggressionText;
    public Text DefenseText;
    public Text BirthrateText;
    public Text EnergyuseText;
    public Text PopulationText;





    // Use this for initialization
    public void show()
    {
        totem.SetActive(false);
        wing2.SetActive(false);
        leaves.SetActive(false);
        InfoCanvas.SetActive(true);
        returnbutton.SetActive(true);
        next.SetActive(false);


    }

    // Update is called once per frame
    public void hide()
    {
        wing2.SetActive(true);
        totem.SetActive(true);
        leaves.SetActive(true);
        InfoCanvas.SetActive(false);
        returnbutton.SetActive(false);
        next.SetActive(true);
    }

    public void OpenEvoScreen()
    {

        EvolutionsCanvas.SetActive(true);

        HexMapCamera.Locked = true;


        totem.SetActive(false);
        wing2.SetActive(false);
        leaves.SetActive(false);
        SettingsButton.SetActive(false);
        Score.SetActive(false);
        InfoCanvas.SetActive(false);
        next.SetActive(false);

        Herbivorous.SetActive(false);
        Carnivorous.SetActive(false);
        Omnivorous.SetActive(false);

        AggressionText.text = Creature.player.stats.Attack.ToString();
        DefenseText.text = Creature.player.stats.Defense.ToString();
        BirthrateText.text = Creature.player.stats.Fert.ToString();
        PopulationText.text = Creature.player.population.ToString();
        EnergyuseText.text = Creature.player.stats.MeatValue.ToString();





        if (Creature.player.isHerbivore == true && Creature.player.isCarnivore == false) // herbivore
        {
            Herbivorous.SetActive(true);
            Carnivorous.SetActive(false);
            Omnivorous.SetActive(false);
            SpeciesType.text = "Herbiborous";

        }
        if (Creature.player.isCarnivore == true && Creature.player.isHerbivore == false) // carnivorous
        {
            Herbivorous.SetActive(true);
            Carnivorous.SetActive(false);
            Omnivorous.SetActive(false);
            SpeciesType.text = "Carnivorous";

        }
        if (Creature.player.isCarnivore == true && Creature.player.isHerbivore == true) // omnivorous
        {
            Herbivorous.SetActive(false);
            Carnivorous.SetActive(false);
            Omnivorous.SetActive(true);
            SpeciesType.text = "Omnivorous";

        }

        Evo1.GetComponent<Image>().sprite = Resources.Load<Sprite>(Creature.player.traits[0].imagePath);
        Evo2.GetComponent<Image>().sprite = Resources.Load<Sprite>(Creature.player.traits[1].imagePath);
        Evo3.GetComponent<Image>().sprite = Resources.Load<Sprite>(Creature.player.traits[2].imagePath);
        Evo4.GetComponent<Image>().sprite = Resources.Load<Sprite>(Creature.player.traits[3].imagePath);


    }

    public void CloseEvoScreen()
    {

        EvolutionsCanvas.SetActive(false);
        totem.SetActive(true);
        wing2.SetActive(true);
        leaves.SetActive(true);
        SettingsButton.SetActive(true);
        Score.SetActive(true);
        next.SetActive(true);


        HexMapCamera.Locked = false;

    }

    public void evo1()
    {
        traitName.text = Creature.player.traits[0].name;
        traitDesc.text = Creature.player.traits[0].description;
    }

    public void evo2()
    {
        traitName.text = Creature.player.traits[1].name;
        traitDesc.text = Creature.player.traits[1].description;
    }

    public void evo3()
    {
        traitName.text = Creature.player.traits[2].name;
        traitDesc.text = Creature.player.traits[2].description;
    }

    public void evo4()
    {
        traitName.text = Creature.player.traits[3].name;
        traitDesc.text = Creature.player.traits[3].description;
    }

}
