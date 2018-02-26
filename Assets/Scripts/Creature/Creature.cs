using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Creature
{
    public static Dictionary<string, Creature> creatures = new Dictionary<string, Creature>();

    public string name;
    Stats stats;
    Size size;

    public int population; //added population counter

    bool carnivore;
    bool herbavore;

    // movement method
    // hunting method

    // reproduction method
    // energy to reproduce

    // traits


    enum Size { small, med, large };

    public Creature(string name)
    {
        this.name = name;
        stats = new Stats();
    }
}


