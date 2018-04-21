using UnityEngine;
using UnityEngine.UI;

public class MigrationMenu : MenuVisibilityCtrl
{
    public GameManager game;

    public InputField field;
    public Button confirmButton;

    HexCell activeCell;
    HexCell neighbor;

    public Text currentPop;

    void Start()
    {
        field.onValueChanged.AddListener(delegate { FieldValueChanged(); });
    }

    private void Update()
    {
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

        int creatureCount = activeCell.tile.GetCreatureCount(Creature.player.name);
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
        currentPop.text = "You have  " + cell.tile.GetCreatureCount(Creature.player.name).ToString() + "  creatures living here.";
        

        activeCell = cell;
        this.neighbor = neighbor;
        field.ActivateInputField();
    }

    public override void Close()
    {
        base.Close();
        HexMapCamera.Locked = false;
    }
}
