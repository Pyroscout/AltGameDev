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
        foreach (Creature creature in Creature.creatures.Values)
        {
            if (!creature.isPlayer)
            {
                HexCell cell = hexGrid.GetRandomCellAboveWater();
                cell.AddCreature(creature, creature.population);
            }
        }
    }

    public void InitialPhase()
    {
        if(selectedCell.IsUnderwater)
        {
            return;
        }
        foreach (Creature creature in Creature.creatures.Values)
        {
            if (creature.isPlayer)
            {
                selectedCell.AddCreature(creature, creature.population);
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
        Creature player = new Creature("player", 200, true);
        Creature.creatures[player.name] = player;
        Creature.player = player;
        
        for(int i = 1; i < 10; i++)
        {
            Creature ai = new Creature("CPU " + i, 200);
            Creature.creatures[ai.name] = ai;
        }
    }

    void BeginReproductionPhase()
    {
        generationNum++;
        ui.UpdateGeneration(generationNum);
        // reproduce all creatures in tiles
        foreach (HexCell cell in hexGrid.cells)
        {
            Tile tile = cell.tile;
            foreach (Creature creature in Creature.creatures.Values)
            {
                creature.IncreaseGeneration(tile);
            }
        }
            
    }

    void BeginEvolutionPhase()
    {
        int numTraits = 2;
        foreach(Creature creature in Creature.creatures.Values)
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

            foreach (Creature creature in Creature.creatures.Values)
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
            foreach (Creature creature in Creature.creatures.Values)
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
        foreach (Creature creature in Creature.creatures.Values)
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
        if (selectedCell.HasCreature(Creature.player.name))
        {
            uiPerspective.PlaceArrows(selectedCell);
        }
    }

    public void MoveInDirection(HexCell neighbor, HexCell cell, int amount)
    {
        cell.RemoveCreature(Creature.player, amount);
        neighbor.AddCreature(Creature.player, amount);
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
