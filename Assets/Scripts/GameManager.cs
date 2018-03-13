using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections.Generic;

public enum Phase { Reproduce, Evolve, Feed, Migrate, COUNT }

public class GameManager : MonoBehaviour
{
    public HexGrid hexGrid;
    HexCell selectedCell;

    public UIManager UI;
    public UIPerspectiveManager uiPerspective;

    int generationNum;
    int turn;

    bool initialPhase;

    bool huntIsActive;
    float huntTimeLeft;

    Phase phase;

    void Awake()
    {
        generationNum = 0;
        initialPhase = true;
        CreateCreatures();
    }

    // Use this for initialization
    void Start ()
    {
        foreach (Creature creature in Creature.creatures)
        {
            Debug.Log("Start Gen: " + generationNum + "[" + creature.ToString() + "]");
        }

        UI.SetupUI();
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetMouseButton(0) &&
            !EventSystem.current.IsPointerOverGameObject())
        {
            HandleInput();
        }

        if (huntIsActive)
        {
            huntTimeLeft -= Time.deltaTime;
            if(huntTimeLeft < 0)
            {
                EndFeedingPhase();
            }
            else
            {
                ForageAndHunt();
            }
        }

        UI.UpdateUI(selectedCell);
    }

    void HandleInput()
    {
        Ray inputRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(inputRay, out hit))
        {
            HexCell newSelection = hexGrid.GetCell(hit.point);
            if (selectedCell != newSelection)
            {
                SelectCell(newSelection);
            }
        }
    }

    void SelectCell(HexCell newSelection)
    {
        if(newSelection != selectedCell)
        {
            if (selectedCell != null)
            {
                selectedCell.IsSelected = false;
            }
            newSelection.IsSelected = true;
            selectedCell = newSelection;

            if(phase == Phase.Migrate)
            {
                PlaceMigrationArrows();
            }
        }
    }

    public void InitialPhase()
    {
        if(turn < Creature.creatures.Count)
        {
            Creature activeCreature = Creature.creatures[turn];
            selectedCell.AddCreature(activeCreature.name, activeCreature.population);
            turn++;
        }
        else
        {
            initialPhase = false;
            turn = 0;
            NextPhase();
        }
    }

    public void NextPhase()
    {
        if(phase == Phase.Migrate)
        {
            uiPerspective.ClearArrows();
        }

        // remove this and handle no press next phase
        if (huntIsActive)
        {
            Debug.Log(huntTimeLeft);
            return;
        }

        if(initialPhase)
        {
            InitialPhase();
            return;
        }

        phase = phase == Phase.Migrate ? Phase.Reproduce : (Phase)(((int)phase)+1);
        UI.UpdatePhase(phase);
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
        Creature.creatures.Add(rabbit);

        Stats wolfStats = new Stats(15, 10, 10, 30, 0, 5, 10, 3, 1);
        Creature wolf = new Creature("wolf", 200, wolfStats);
        Creature.creatures.Add(wolf);

        turn = 0;
    }

    void ReproductionPhase()
    {
        generationNum++;
        // reproduce all creatures in tiles
        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            foreach (Creature creature in Creature.creatures)
            {
                creature.IncreaseGeneration(tile);
                Debug.Log("Reprod Gen: " + generationNum + "[" + creature.ToString() + "]");
            }
        }
            
    }

    void EvolutionPhase()
    {
        // evolve creatures
    }

    void FeedingPhase()
    {
        huntIsActive = true;
        huntTimeLeft = 10f;

        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;

            foreach (Creature creature in Creature.creatures)
            {
                if (tile.HasCreature(name))
                {
                    int tilePop = tile.GetCreatureCount(name);
                    tile.energyRequiredCounts[creature.name] = tilePop * (int)creature.size;
                }
            }
        }
    }

    void ForageAndHunt()
    {

        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            foreach (Creature creature in Creature.creatures)
            {
                creature.ForageAndHunt(tile);
            }
        }
        //Creature wolf = Creature.creatures[1];
        //Creature rabbit = Creature.creatures[0];

        //wolf.Hunt(rabbit);

        //wolf.KillUnfed();

        //Debug.Log("Feed Gen: " + generationNum + "[" + rabbit.ToString() + "]");
        //Debug.Log("Feed Gen: " + generationNum + "[" + wolf.ToString() + "]");
    }

    void EndFeedingPhase()
    {
        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            tile.KillUnfedCreatrues();
        }

        huntIsActive = false;
        NextPhase();
    }

    void MigrationPhase()
    {
        PlaceMigrationArrows();
    }

    void PlaceMigrationArrows()
    {
        uiPerspective.ClearArrows();
        Creature creature = Creature.creatures[turn];
        if (selectedCell.HasCreature(creature.name))
        {
            uiPerspective.PlaceArrows(selectedCell);
        }
    }

    public void MoveInDirection(HexCell neighbor, HexCell cell)
    {
        Creature creature = Creature.creatures[turn];
        int pop = cell.tile.GetCreatureCount(creature.name);
        cell.RemoveCreature(creature.name, pop);
        Debug.Log("Cell: " + cell.tile.GetCreatureCount(creature.name));
        neighbor.AddCreature(creature.name, pop);
        Debug.Log("Neighbor: " + neighbor.tile.GetCreatureCount(creature.name));
    }
}
