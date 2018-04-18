using UnityEngine;
using UnityEngine.UI;

public class ChooseEvolutionMenu : MonoBehaviour
{
    public GameManager game;
    public ReplaceEvolutionMenu replaceEvoMenu;
    public Text traitNameLabel;
    public Text traitDescLabel;
    public GameObject trait1Image;
    public GameObject trait2Image;
    public GameObject Evolutions;
    public GameObject settings;
    public GameObject Score;

    public GameObject PrimalView;
    public GameObject BiomeView;

    Creature creature;
    Trait[] traits;
    int activeTraitIndex;

    public void Open(Creature creature, Trait[] traits)
    {
        this.creature = creature;
        this.traits = traits;
        
        trait1Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(traits[0].imagePath);
        trait2Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(traits[1].imagePath);

        UpdateTraitInfo(traits[activeTraitIndex]);

        gameObject.SetActive(true);
        HexMapCamera.Locked = true;

        Evolutions.SetActive(false);
        settings.SetActive(false);
        Score.SetActive(false);
        PrimalView.SetActive(false);
        BiomeView.SetActive(false);
    }

    public void Close()
    {
        creature = null;
        traits = null;

        gameObject.SetActive(false);
        HexMapCamera.Locked = false;
    }

    public void SelectTrait(int index)
    {
        activeTraitIndex = index;
        UpdateTraitInfo(traits[activeTraitIndex]);
    }

    public void ConfirmTrait()
    {
        Trait newTrait = traits[activeTraitIndex];
        if (creature.traits.Count == Creature.MAX_TRAIT_COUNT)
        {
            replaceEvoMenu.Open(creature, newTrait);
            Evolutions.SetActive(false);
            settings.SetActive(false);
            Score.SetActive(false);
            PrimalView.SetActive(false);
            BiomeView.SetActive(false);
        }
        else
        {
            creature.AddTrait(newTrait);
            Evolutions.SetActive(true);
            settings.SetActive(true);
            Score.SetActive(true);
            PrimalView.SetActive(false);
            BiomeView.SetActive(true);
            game.NextPhase();
            
        }
        Close();
    }

    public void UpdateTraitInfo(Trait trait)
    {
        traitNameLabel.text = trait.name;
        traitDescLabel.text = trait.description;
    }
}
