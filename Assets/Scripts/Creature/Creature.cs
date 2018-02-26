using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Creature : MonoBehaviour
{
    Stats stats;
    Size size;
    

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
    }
}
