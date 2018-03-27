using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Creature
{
    public static List<Creature> creatures = new List<Creature>();

    public string name;
    Stats stats;
    public Size size;

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


    public enum Size { small = 1, med, large };

    public Creature(string name, int population) : this(name, population, new Stats())
    {

    }

    public Creature(string name, int population, Stats stats) 
    {
        this.name = name;
        this.stats = stats;
        this.population = population;
        size = Size.small;
        isHerbavore = true;
        //deathQueue.Enqueue(population);
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


