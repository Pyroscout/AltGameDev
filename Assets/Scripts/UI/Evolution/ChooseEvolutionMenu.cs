using UnityEngine;
using UnityEngine.UI;

public class ChooseEvolutionMenu : MonoBehaviour
{
    public GameManager game;
    public ReplaceEvolutionMenu replaceEvoMenu;
    public Text traitNameLabel;
    public Text traitDescLabel;


    Creature creature;
    Trait[] traits;
    int activeTraitIndex;

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
        }
        else
        {
            creature.AddTrait(newTrait);
        }
        Close();
    }

    public void UpdateTraitInfo(Trait trait)
    {
        traitNameLabel.text = trait.name;
        traitDescLabel.text = trait.description;
    }

    public void Open(Creature creature, Trait[] traits)
    {
        this.creature = creature;
        this.traits = traits;

        UpdateTraitInfo(traits[activeTraitIndex]);

        gameObject.SetActive(true);
        HexMapCamera.Locked = true;
    }

    public void Close()
    {
        creature = null;
        traits = null;

        gameObject.SetActive(false);
        HexMapCamera.Locked = false;
    }
}
