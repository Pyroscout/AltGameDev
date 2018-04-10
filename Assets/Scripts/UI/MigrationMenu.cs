using UnityEngine;
using UnityEngine.UI;

public class MigrationMenu : MonoBehaviour
{
    public GameManager game;

    public InputField field;
    public Button confirm;

    HexCell activeCell;
    HexCell neighbor;

    void Start()
    {
        field.onValueChanged.AddListener(delegate { FieldValueChanged(); });
    }

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            HandleInput();
        }
    }

    void HandleInput()
    {
        Close();
    }

        public void FieldValueChanged()
    {
        int currentNum = 0;
        if(!int.TryParse(field.text, out currentNum))
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
            game.NextPhase();
            Close();
        }
    }

    public void Open(HexCell neighbor, HexCell cell)
    {
        gameObject.SetActive(true);
        HexMapCamera.Locked = true;

        activeCell = cell;
        this.neighbor = neighbor;
    }

    public void Close()
    {
        gameObject.SetActive(false);
        HexMapCamera.Locked = false;
    }
}
