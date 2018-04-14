using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class Creature
{
    public static Dictionary<string,Creature> creatures = new Dictionary<string, Creature>();
    public static Creature player;

    public static int MAX_TRAIT_COUNT = 4;

    public string name;
    public Stats stats;

    public bool isPlayer;

    public List<Trait> traits = new List<Trait>();

    public int population; //added population counter
    int unfedPop;
    //Queue<int> deathQueue = new Queue<int>();

    public Dictionary<string, Tile> tilesOccupied = new Dictionary<string, Tile>();

    // movement method
    // hunting method

    // reproduction method
    // energy to reproduce


    public Creature(string name, int population, bool isPlayer = false) 
    {
        this.name = name;
        this.stats = new Stats();
        this.population = population;
        this.isPlayer = isPlayer;
        //isHerbavore = true;
        //deathQueue.Enqueue(population);
    }

    public void AddTrait(Trait trait)
    {
        trait.OnAdd(stats);
        traits.Add(trait);
    }

    public void ReplaceTraitAtIndex(int index, Trait newTrait)
    {
        Trait oldTrait = traits[index];
        oldTrait.OnRemove(stats);
        newTrait.OnAdd(stats);
        traits[index] = newTrait;
    }

    public void RemoveTraitAtIndex(int index)
    {
        Trait trait = traits[index];
        trait.OnRemove(stats);
    }

    public Trait[] RollNewTraits(int count)
    {
        Trait[] traits = new Trait[count];
        List<Trait> potentialTraits = GenerateTraitList();
        for(int i = 0; i < count; i++)
        {
            int roll = (int)(Random.value * potentialTraits.Count * 0.999f);
            traits[i] = potentialTraits[roll];
            potentialTraits.RemoveAt(roll);
        }

        return traits;
    }

    public List<Trait> GenerateTraitList()
    {
        List<Trait> traits = new List<Trait>();

        //Neither check
        if (stats.isherbivore == false && stats.isherbivore == false)
            stats.isherbivore = true;

        // Herbivor Check
        if (stats.isherbivore == true && stats.iscarnivore == false)
        {
            // Herbivore + small evolutions
            if (stats.size == Stats.Size.small)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2

                traits.Add(new becomeCarnivorous());

                traits.Add(new FangsTrait()); // attack up

                traits.Add(new FurCoatTrait()); // survivability up
                traits.Add(new TemperatureRegulationTrait()); // survivability up -- Unique to deserts and tundras?

                traits.Add(new WingsTrait()); // Mobility up
                traits.Add(new AppendagesTrait()); // Mobility up

                traits.Add(new ShellTrait()); // strength up
                traits.Add(new ThickHideTrait()); // strength up
            }

            // Herbivore + medium evoltions
            if (stats.size == Stats.Size.med)
            {
                traits.Add(new SmallSizeTrait()); // makes size 1
                traits.Add(new LargeSizeTrait()); // makes size 3

                traits.Add(new becomeCarnivorous());

                traits.Add(new TolerantLungsTrait()); // survivability up -- benefits related to water tiles?
                traits.Add(new PheromonesTrait()); // survivability up

                traits.Add(new ThumbsTrait()); // Mobility up
                traits.Add(new FinsTrait()); // Mobility up -- benefit related to water tiles?

                traits.Add(new HornsTrait()); // strength up
                traits.Add(new PoisonTrait()); // strength up

            }

            // Herbivore + large evolutions
            if (stats.size == Stats.Size.large)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2

                traits.Add(new becomeCarnivorous());

                traits.Add(new GnashingTeethTrait()); // attack up

                traits.Add(new EggLayingTrait()); // survivability up
                traits.Add(new CamouflageTrait()); // survivability up


                traits.Add(new SmoothSkinTrait()); // Mobility up -- desert or tundra?
                traits.Add(new PaddedFeetTrait()); // Mobility up


                traits.Add(new RepuliveOdorTrait()); // strength up
                traits.Add(new ThornedBodyTrait()); // strength up

            }
        }

        // Carnivore Check
        if (stats.iscarnivore == true && stats.isherbivore == false)
        {
            // Carnivore + small evolutions
            if (stats.size == Stats.Size.small)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2

                traits.Add(new becomeHerbivorous());

                traits.Add(new DeadlyTalonsTrait()); // attack up
                traits.Add(new FangsTrait()); // attack up

                traits.Add(new FurCoatTrait()); // survivability up
                traits.Add(new TemperatureRegulationTrait()); // survivability up -- Unique to deserts and tundras?

                traits.Add(new WingsTrait()); // Mobility up
                traits.Add(new AppendagesTrait()); // Mobility up

            }

            // Carnivore + medium evolutions
            if (stats.size == Stats.Size.med)
            {
                traits.Add(new SmallSizeTrait()); // makes size 1
                traits.Add(new LargeSizeTrait()); // makes size 3

                traits.Add(new becomeHerbivorous());

                traits.Add(new VenomTrait()); // attack up
                traits.Add(new ParalysisTrait()); // attack up

                traits.Add(new TolerantLungsTrait()); // survivability up -- benefits related to water tiles?
                traits.Add(new PheromonesTrait()); // survivability up

                traits.Add(new FinsTrait()); // Mobility up-- benefit related to water tiles?

                traits.Add(new HornsTrait()); // strength up

            }

            // Carnivore + large evolutions
            if (stats.size == Stats.Size.large)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2

                traits.Add(new becomeHerbivorous());

                traits.Add(new ConstrictingTentaclesTrait()); //attack up

                traits.Add(new EggLayingTrait()); // survivability up
                traits.Add(new CamouflageTrait()); // survivability up


                traits.Add(new SmoothSkinTrait()); // Mobility up -- desert or tundra?
                traits.Add(new PaddedFeetTrait()); // Mobility up


                traits.Add(new RepuliveOdorTrait()); // strength up
                traits.Add(new ThornedBodyTrait()); // strength up

            }
        }

        // Omnivore Check
        if (stats.isherbivore == true && stats.iscarnivore == true)
        {
            // Omnivore + small evolutions
            if (stats.size == Stats.Size.small)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2


                traits.Add(new DeadlyTalonsTrait()); // attack up
                traits.Add(new FangsTrait()); // attack up

                traits.Add(new FurCoatTrait()); // survivability up
                traits.Add(new TemperatureRegulationTrait()); // survivability up -- Unique to deserts and tundras?

                traits.Add(new WingsTrait()); // Mobility up
                traits.Add(new AppendagesTrait()); // Mobility up

                traits.Add(new ShellTrait()); // strength up
                traits.Add(new ThickHideTrait()); // strength up
            }

            // Omnivore + medium evolutions
            if (stats.size == Stats.Size.med)
            {
                traits.Add(new SmallSizeTrait()); // makes size 1
                traits.Add(new LargeSizeTrait()); // makes size 3


                traits.Add(new VenomTrait()); // attack up
                traits.Add(new ParalysisTrait()); // attack up

                traits.Add(new TolerantLungsTrait()); // survivability up -- benefits related to water tiles?
                traits.Add(new PheromonesTrait()); // survivability up

                traits.Add(new ThumbsTrait()); // Mobility up
                traits.Add(new FinsTrait()); // Mobility up -- benefit related to water tiles?

                traits.Add(new HornsTrait()); // strength up
                traits.Add(new PoisonTrait()); // strength up

            }

            // Omnivmore + large evolutions
            if (stats.size == Stats.Size.large)
            {
                traits.Add(new MediumSizeTrait()); // makes size 2

                traits.Add(new GnashingTeethTrait()); // attack up
                traits.Add(new ConstrictingTentaclesTrait()); //attack up

                traits.Add(new EggLayingTrait()); // survivability up
                traits.Add(new CamouflageTrait()); // survivability up


                traits.Add(new SmoothSkinTrait()); // Mobility up -- desert or tundra?
                traits.Add(new PaddedFeetTrait()); // Mobility up


                traits.Add(new RepuliveOdorTrait()); // strength up
                traits.Add(new ThornedBodyTrait()); // strength up

            }
        }



        return traits;
    }

    public void IncreaseGeneration(Tile tile)
    {
        int tilePop = tile.GetCreatureCount(name);
        if(tilePop > 0)
        {
            int newBornCount = tilePop * stats.fert;
            tile.AddCreature(this, newBornCount);
            population += newBornCount;
        }


        //int deathToll = deathQueue.Count == stats.lSpn ? deathQueue.Dequeue() : 0;
        //deathQueue.Enqueue(newBornCount);
        //population = population + newBornCount - deathToll;

        // TODO: implement lifespan ^
    }

    public void ForageAndHunt(Tile tile)
    {
        if (!tile.HasCreature(name))
        {
            return;
        }
        

        int energyRequired = tile.GetEnergyRequiredCount(name);
        if (energyRequired <= 0)
        {
            return;
        }

        if (stats.isherbivore == true)
        {
            int foraged = Forage(tile, energyRequired);
            energyRequired = foraged;
        }

        if (energyRequired <= 0)
        {
            return;
        }

        if (stats.iscarnivore == true)
        {
            energyRequired = Hunt(tile, energyRequired);
        }

        tile.SetEnergyRequiredCount(name, energyRequired);
    }

    // returns new energy required
    int Forage(Tile tile, int energyRequired)
    {
        float forageSuccessRate = 0.1f;
        float roll = Random.value;
        int energyForaged = 0;
        
        if(forageSuccessRate < roll)
        {
            energyForaged = tile.biome.ForageAttempt();
        }
        return Mathf.Max(0, energyRequired - energyForaged);
    }


    // returns new energy required
    int Hunt(Tile tile, int energyRequired)
    {
        bool isHuntingCreature = tile.creatureCounts.Count > 1 && Random.value <= (stats.hunt * 0.05f);
        
        if (isHuntingCreature)
        {
            Creature prey = ChooseCreatureToHunt(tile);
            energyRequired = Hunt(prey, tile, energyRequired);
        }
        else
        {
            float huntSuccessRate = 0.1f;
            float roll = Random.value;
            int energyForaged = 0;

            if (huntSuccessRate < roll)
            {
                energyForaged = tile.biome.HuntAttempt();
            }
        }
        
        return energyRequired;
    }

    Creature ChooseCreatureToHunt(Tile tile)
    {
        List<Creature> potentialPrey = new List<Creature>();
        foreach (string creatureName in tile.creatureCounts.Keys)
        {
            if (creatureName != name)
            {
                potentialPrey.Add(Creature.creatures[creatureName]);
            }
        }

        int roll = (int)(Random.value * potentialPrey.Count * 0.999f);
        return potentialPrey[roll];
    }

    int Hunt(Creature prey, Tile tile, int energyRequired)
    {
        float huntRoll = Random.value * stats.hunt;
        float evadeRoll = Random.value * prey.stats.evs;

        float atkRoll = Random.value * stats.hunt;
        float defRoll = Random.value * prey.stats.evs;
        if (evadeRoll > huntRoll || atkRoll > defRoll)
        {
            return energyRequired;
        }
        
        int numPreyHunted = (int)(Random.value * 2 + 1);
        int preyInTile = tile.creatureCounts[prey.name];
        if (numPreyHunted > preyInTile)
        {
            numPreyHunted = preyInTile;
        }

        int energyHunted = numPreyHunted * prey.stats.meatVal;
        tile.RemoveCreature(prey, numPreyHunted);

        return Mathf.Max(0, energyRequired - energyHunted);
    }

    public void KillUnfed()
    {
        population -= unfedPop;
    }

    public override string ToString()
    {
        return name + ", population: " + population;
    }

    public Tile GetRandomOccupiedTile()
    {
        int roll = (int)(Random.value * tilesOccupied.Count * 0.999f);
        return tilesOccupied.ElementAt(roll).Value;
    }

    public void RandomMigration()
    {
        Tile fromTile = GetRandomOccupiedTile();
        Tile toTile = fromTile.cell.GetRandomNeighborCellAboveWater().tile;
        int creatureCount = fromTile.creatureCounts[name];
        float percent = Mathf.Round(Random.value * 4);
        int moveCount = (int)(creatureCount * (percent / 4f));
        fromTile.RemoveCreature(this, moveCount);
        toTile.AddCreature(this, moveCount);
    }
}


