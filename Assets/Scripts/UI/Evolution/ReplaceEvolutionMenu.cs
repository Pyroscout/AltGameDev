using UnityEngine;
using UnityEngine.UI;

public class ReplaceEvolutionMenu : MonoBehaviour
{
    public GameManager game;
    public Text traitNameLabel;
    public Text traitDescLabel;
    public GameObject totem;
    public GameObject score;
    public GameObject settings;
    public GameObject Evolutions;

    public GameObject trait1Image;
    public GameObject trait2Image;
    public GameObject trait3Image;
    public GameObject trait4Image;





    Creature creature;
    Trait newTrait;
    int activeTraitIndex;

    public void Open(Creature creature, Trait newTrait)
    {
        this.creature = creature;
        this.newTrait = newTrait;

        totem.SetActive(false);
        score.SetActive(false);
        settings.SetActive(false);
        Evolutions.SetActive(false);

        trait1Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(creature.traits[0].imagePath);
        trait2Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(creature.traits[1].imagePath);
        trait3Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(creature.traits[2].imagePath);
        trait4Image.GetComponent<Image>().sprite = Resources.Load<Sprite>(creature.traits[3].imagePath);


        UpdateTraitInfo(creature.traits[activeTraitIndex]);

        gameObject.SetActive(true);
        HexMapCamera.Locked = true;
    }

    public void Close()
    {
        creature = null;
        newTrait = null;

        totem.SetActive(true);
        score.SetActive(true);
        settings.SetActive(true);
        Evolutions.SetActive(true);

        gameObject.SetActive(false);
        HexMapCamera.Locked = false;
    }

    public void SelectTrait(int index)
    {
        activeTraitIndex = index;

        UpdateTraitInfo(creature.traits[activeTraitIndex]);
    }

    public void ConfirmTrait()
    {
        creature.ReplaceTraitAtIndex(activeTraitIndex, newTrait);
        game.NextPhase();
        Close();
    }

    public void UpdateTraitInfo(Trait trait)
    {
        traitNameLabel.text = trait.name;
        traitDescLabel.text = trait.description;

    }
}
