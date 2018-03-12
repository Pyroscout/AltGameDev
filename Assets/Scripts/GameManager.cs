using UnityEngine;
using UnityEngine.EventSystems;

public class GameManager : MonoBehaviour
{
    public HexGrid hexGrid;
    public HexCell selectedCell;

    public GameObject UI;

    int generationNum;

    Phase phase;
    enum Phase { Reproduce, Evolve, Feed, Migrate, COUNT }

    void Awake()
    {
        generationNum = 0;
        phase = Phase.Reproduce;
        CreateCreatures();
    }

    // Use this for initialization
    void Start ()
    {
        selectedCell = hexGrid.cells[0];
        foreach (Creature creature in Creature.creatures.Values)
        {
            Debug.Log("Start Gen: " + generationNum + "[" + creature.ToString() + "]");
        }
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetMouseButton(0) &&
            !EventSystem.current.IsPointerOverGameObject())
        {
            HandleInput();
        }
    }

    void HandleInput()
    {
        Ray inputRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(inputRay, out hit))
        {
            HexCell newSelected = hexGrid.GetCell(hit.point);
            if (selectedCell != newSelected)
            {
                selectedCell.IsSelected = false;
                newSelected.IsSelected = true;
                selectedCell = newSelected;
            }
        }
    }



    public void NextPhase()
    {
        phase = phase == Phase.Migrate ? Phase.Reproduce : (Phase)(((int)phase)+1);
        switch (phase)
        {
            case Phase.Migrate:
                MigrationPhase();
                break;
            case Phase.Reproduce:
                ReproductionPhase();
                break;
            case Phase.Evolve:
                EvolutionPhase();
                break;
            case Phase.Feed:
                FeedingPhase();
                break;
        }
    }

    void CreateCreatures()
    {
        Stats rabStats = new Stats(0, 0, 5, 0, 1, 0, 2, 1, 4);
        Creature rabbit = new Creature("rabbit", 1000, rabStats);
        Creature.creatures[rabbit.name] = rabbit;

        Stats wolfStats = new Stats(15, 10, 10, 30, 0, 5, 10, 3, 1);
        Creature wolf = new Creature("wolf", 200, wolfStats);
        Creature.creatures[wolf.name] = wolf;
    }

    void ReproductionPhase()
    {
        generationNum++;
        // reproduce all creatures in tiles
        foreach (Creature creature in Creature.creatures.Values)
        {
            creature.IncreaseGeneration();
            Debug.Log("Reprod Gen: " + generationNum + "[" + creature.ToString() + "]");
        }
    }

    void EvolutionPhase()
    {
        // evolve creatures
    }

    void FeedingPhase()
    {
        Creature wolf = Creature.creatures["wolf"];
        Creature rabbit = Creature.creatures["rabbit"];

        wolf.Hunt(rabbit);

        wolf.KillUnfed();

        Debug.Log("Feed Gen: " + generationNum + "[" + rabbit.ToString() + "]");
        Debug.Log("Feed Gen: " + generationNum + "[" + wolf.ToString() + "]");

        //foreach (HexCell cell in hexGrid.cells)
        //{
        //    // feed off resources
        //    // TODO: potentially feed by turn order
        //    foreach (KeyValuePair<string, int> creatureCount in cell.tile.creatureCounts)
        //    {
        //        Creature creature = Creature.creatures[creatureCount.Key];
        //        creature.Forage(cell.tile);
        //    }

        //    // hunt for creatures
        //}
    }

    void MigrationPhase()
    {
        // allow to move units
    }
}
