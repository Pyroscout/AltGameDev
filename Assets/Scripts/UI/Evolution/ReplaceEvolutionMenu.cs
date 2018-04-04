using UnityEngine;
using UnityEngine.UI;

public class ReplaceEvolutionMenu : MonoBehaviour
{
    public GameManager game;
    public Text traitNameLabel;
    public Text traitDescLabel;

    Creature creature;
    Trait newTrait;
    int activeTraitIndex;

    public void Open(Creature creature, Trait newTrait)
    {
        this.creature = creature;
        this.newTrait = newTrait;


        UpdateTraitInfo(creature.traits[activeTraitIndex]);

        gameObject.SetActive(true);
        HexMapCamera.Locked = true;
    }

    public void Close()
    {
        creature = null;
        newTrait = null;

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

        Close();
    }

    public void UpdateTraitInfo(Trait trait)
    {
        traitNameLabel.text = trait.name;
        traitDescLabel.text = trait.description;
    }
}
