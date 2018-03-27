using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Creature
{
    public static List<Creature> creatures = new List<Creature>();

    public static int MAX_TRAIT_COUNT = 4;

    public string name;
    public Stats stats;

    public bool isPlayer;

    public List<Trait> traits = new List<Trait>();

    public int population; //added population counter
    int unfedPop;
    //Queue<int> deathQueue = new Queue<int>();

    bool isCarnivore;
    bool isHerbavore;

    // movement method
    // hunting method

    // reproduction method
    // energy to reproduce

    // traits

    

    public Creature(string name, int population, bool isPlayer = false) 
    {
        this.name = name;
        this.stats = new Stats();
        this.population = population;
        this.isPlayer = isPlayer;
        isHerbavore = true;
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
            Debug.Log(traits[i]);
        }

        return traits;
    }

    public List<Trait> GenerateTraitList()
    {
        List<Trait> traits = new List<Trait>();
        traits.Add(new IncreaseAttackTrait());
        traits.Add(new IncreaseDefenseTrait());
        traits.Add(new IncreaseSizeTrait());
        return traits;
    }

    public void IncreaseGeneration(Tile tile)
    {
        int tilePop = tile.GetCreatureCount(name);
        if(tilePop > 0)
        {
            int newBornCount = tilePop * stats.fert;
            tile.AddCreature(name, newBornCount);
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

        if (isHerbavore)
        {
            int foraged = Forage(tile, energyRequired);
            energyRequired = foraged;
        }

        if (energyRequired <= 0)
        {
            return;
        }

        if (isCarnivore)
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
        float huntSuccessRate = 0.1f;
        float roll = Random.value;
        int energyForaged = 0;

        if (huntSuccessRate < roll)
        {
            energyForaged = tile.biome.HuntAttempt();
        }
        return energyRequired;
    }

    void Hunt(Creature prey)
    {
        int hunger = population * stats.meatCon;
        int meatSup = prey.population * prey.stats.meatVal;
        int deltaMeat = meatSup - hunger;
        if (deltaMeat > 0)
        {
            prey.population = deltaMeat / prey.stats.meatVal;
            return;
        }
        // more hunger than supply
        prey.population = 0;
        unfedPop = Mathf.Abs(deltaMeat) / stats.meatCon;
    }

    public void KillUnfed()
    {
        population -= unfedPop;
    }

    public override string ToString()
    {
        return name + ", population: " + population;
    }
}


