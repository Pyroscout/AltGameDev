using System.IO;
using UnityEngine;
using UnityEngine.EventSystems;

public enum Phase { Reproduce, Evolve, Feed, Migrate, COUNT }

public class GameManager : MonoBehaviour
{
    public HexGrid hexGrid;
    HexCell selectedCell;

    public UIManager ui;
    public UIPerspectiveManager uiPerspective;

    public ChooseEvolutionMenu chooseEvoMenu;

    int generationNum;

    bool initialPhase;

    bool huntIsActive;
    float huntTimeLeft;
    float timeSinceHunt = 0;

    Phase phase;

    void Awake()
    {
        generationNum = 1;
        initialPhase = true;
        CreateCreatures();
    }

    // Use this for initialization
    void Start ()
    {
        ui.SetupUI();
        Load();
        PlaceEnemyCreatures();
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
            float dt = Time.deltaTime;
            huntTimeLeft -= dt;
            timeSinceHunt += dt;

            if (huntTimeLeft < 0)
            {
                EndFeedPhase();
            }
            else if (timeSinceHunt > 0.2)
            {
                timeSinceHunt = 0;
                ForageAndHunt();
            }
        }

        ui.UpdateUI(selectedCell);
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
        if (selectedCell != null)
        {
            selectedCell.IsSelected = false;
        }
        newSelection.IsSelected = true;
        selectedCell = newSelection;

        if (phase == Phase.Migrate)
        {
            PlaceMigrationArrows();
        }
    }

    public void PlaceEnemyCreatures()
    {
        foreach (Creature creature in Creature.creatures)
        {
            if (!creature.isPlayer)
            {
                HexCell cell = hexGrid.GetRandomCellAboveWater();
                cell.AddCreature(creature);
            }
        }
    }

    public void InitialPhase()
    {
        foreach (Creature creature in Creature.creatures)
        {
            if (creature.isPlayer)
            {
                selectedCell.AddCreature(creature);
                initialPhase = false;
                NextPhase();
            }
        }
    }

    public void NextPhase()
    {
        if(selectedCell == null)
        {
            return;
        }

        if(phase == Phase.Migrate)
        {
            uiPerspective.ClearArrows();
        }

        // remove this and handle no press next phase
        if (huntIsActive)
        {
            return;
        }

        if(initialPhase)
        {
            InitialPhase();
            return;
        }

        phase = phase == Phase.Migrate ? Phase.Reproduce : (Phase)(((int)phase)+1);
        ui.UpdatePhase(phase);
        switch (phase)
        {
            case Phase.Migrate:
                BeginMigrationPhase();
                break;
            case Phase.Reproduce:
                BeginReproductionPhase();
                break;
            case Phase.Evolve:
                BeginEvolutionPhase();
                break;
            case Phase.Feed:
                BeginFeedPhase();
                break;
        }
    }

    void CreateCreatures()
    {
        Creature rabbit = new Creature("rabbit", 200, true);
        Creature.creatures.Add(rabbit);
        
        Creature wolf = new Creature("wolf", 200);
        Creature.creatures.Add(wolf);
    }

    void BeginReproductionPhase()
    {
        generationNum++;
        ui.UpdateGeneration(generationNum);
        // reproduce all creatures in tiles
        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            foreach (Creature creature in Creature.creatures)
            {
                creature.IncreaseGeneration(tile);
            }
        }
            
    }

    void BeginEvolutionPhase()
    {
        int numTraits = 2;
        foreach(Creature creature in Creature.creatures)
        {
            Trait[] newTraits = creature.RollNewTraits(numTraits);
            if (creature.isPlayer)
            {
                chooseEvoMenu.Open(creature, newTraits);
            }
            else
            {
                int newTraitRoll = (int)Random.value * numTraits;
                Trait newTrait = newTraits[newTraitRoll];
                if (creature.traits.Count == Creature.MAX_TRAIT_COUNT)
                {
                    int oldTraitRoll = (int)Random.value * Creature.MAX_TRAIT_COUNT;
                    creature.ReplaceTraitAtIndex(oldTraitRoll, newTrait);
                }
                else
                {
                    creature.AddTrait(newTrait);
                }
            }
        }
    }

    void BeginFeedPhase()
    {
        ui.ShowTimer();
        huntIsActive = true;
        huntTimeLeft = 10f;

        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            tile.biome.ResetResources();

            foreach (Creature creature in Creature.creatures)
            {
                if (tile.HasCreature(creature.name))
                {
                    int tilePop = tile.GetCreatureCount(creature.name);
                    tile.SetEnergyRequiredCount(creature.name, tilePop * (int)creature.stats.size);
                }
            }
        }
    }

    void ForageAndHunt()
    {
        ui.UpdateTimer((int)huntTimeLeft);
        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            foreach (Creature creature in Creature.creatures)
            {
                creature.ForageAndHunt(tile);
            }
        }
    }

    void EndFeedPhase()
    {
        foreach (HexCell cell in hexGrid.cells)
        {
            cell.KillUnfedCreatrues();
        }

        huntIsActive = false;
        ui.HideTimer();
        NextPhase();
    }

    void BeginMigrationPhase()
    {
        foreach (Creature creature in Creature.creatures)
        {
            MigrateCreature(creature);
        }
        PlaceMigrationArrows();
    }

    void MigrateCreature(Creature creature)
    {
        if (!creature.isPlayer)
        {
            creature.RandomMigration();
        }
    }

    void PlaceMigrationArrows()
    {
        uiPerspective.ClearArrows();
        // TODO: change 0 to player creature
        Creature creature = Creature.creatures[0];
        if (selectedCell.HasCreature(creature.name))
        {
            uiPerspective.PlaceArrows(selectedCell);
        }
    }

    public void MoveInDirection(HexCell neighbor, HexCell cell, int amount)
    {
        // TODO: change 0 to player creature
        Creature creature = Creature.creatures[0];
        cell.RemoveCreature(creature, amount);
        neighbor.AddCreature(creature);
    }


    public void Load()
    {
        DirectoryInfo info = new DirectoryInfo(Application.dataPath);
        string path = Path.Combine(info.ToString() + "/Maps", "test.map");
        using (BinaryReader reader = new BinaryReader(File.OpenRead(path)))
        {
            int header = reader.ReadInt32();
            if (header <= HexMapEditor.mapVersion)
            {
                hexGrid.Load(reader, header);
                HexMapCamera.ValidatePosition();
            }
            else
            {
                Debug.LogWarning("Unknown map format " + header);
            }
        }
    }
}
