using UnityEngine;
using UnityEngine.UI;

public class MigrationMenu : MenuVisibilityCtrl
{
    public GameManager game;

    public InputField field;
    public Button confirmButton;

    HexCell activeCell;
    HexCell neighbor;

    void Start()
    {
        field.onValueChanged.AddListener(delegate { FieldValueChanged(); });
    }

    private void Update()
    {
        if (!field.isFocused)
        {
            field.ActivateInputField();
        }
        if (Input.GetKeyDown(KeyCode.Return))
        {
            Confirm();
        }
    }

    public void FieldValueChanged()
    {
        int currentNum = 0;
        if (!int.TryParse(field.text, out currentNum))
        {
            return;
        }

        Creature creature = Creature.creatures[0];
        int creatureCount = activeCell.tile.GetCreatureCount(creature.name);
        if (currentNum > creatureCount)
        {
            field.text = creatureCount.ToString();
        }
    }

    public void Confirm()
    {
        int currentNum = 0;
        if (int.TryParse(field.text, out currentNum))
        {
            game.MoveInDirection(neighbor, activeCell, currentNum);
            //game.NextPhase();
            Close();
        }
    }

    public void Open(HexCell neighbor, HexCell cell)
    {
        field.text = "";

        gameObject.SetActive(true);
        HexMapCamera.Locked = true;

        activeCell = cell;
        this.neighbor = neighbor;
    }

    public void Close()
    {
        hide();
        HexMapCamera.Locked = false;
    }
}
