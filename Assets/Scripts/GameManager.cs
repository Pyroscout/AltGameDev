using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public HexGrid hexGrid;

    int generationNum;

    Phase phase;
    enum Phase { Evolve, Migrate, Reproduce, Feed, COUNT }

    void Awake()
    {
        generationNum = 1;
    }

    // Use this for initialization
    void Start () {
        Creature rabbit = new Creature("rabbit");
        rabbit.population = 0;
        Creature.creatures[rabbit.name] = rabbit;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void NextGen()
    {
        generationNum++;
    }
}
