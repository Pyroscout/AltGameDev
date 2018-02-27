using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Creature
{
    public static Dictionary<string, Creature> creatures = new Dictionary<string, Creature>();

    public string name;
    Stats stats;
    Size size;

    int population; //added population counter
    int unfedPop;
    Queue<int> deathQueue = new Queue<int>();

    bool carnivore;
    bool herbavore;

    // movement method
    // hunting method

    // reproduction method
    // energy to reproduce

    // traits


    enum Size { small, med, large };

    public Creature(string name, int population) : this(name, population, new Stats())
    {

    }

    public Creature(string name, int population, Stats stats) 
    {
        this.name = name;
        this.stats = stats;
        this.population = population;
        deathQueue.Enqueue(population);
    }

    public void IncreaseGeneration()
    {
        int newBornCount = population * stats.fert;
        //int deathToll = deathQueue.Count == stats.lSpn ? deathQueue.Dequeue() : 0;
        //deathQueue.Enqueue(newBornCount);
        //population = population + newBornCount - deathToll;

        // TODO: implement lifespan ^
        population = newBornCount;
    }

    public void Forage(Tile tile)
    {
        // check if tile can feed creatures
        unfedPop = tile.biome.ForageAttempt(population, stats.vegCon);

        // TODO: do something with unfedPop
    }

    public void Hunt(Creature prey)
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
        unfedPop =  Mathf.Abs(deltaMeat) / stats.meatCon;
    }

    public void Hunt(Tile tile)
    {
        // TODO: Hunt phase
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


