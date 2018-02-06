using System.Collections;
using System.Collections.Generic;
using UnityEngine;

class Stats
{
    int str;
    int mobil;
    int aggro;
    int resor;
    int adapt;
    int fert;

    public Stats()
    {
        str = 1;
        mobil = 1;
        aggro = 1;
        resor = 1;
        adapt = 1;
        fert = 1;
    }

    public Stats(int strength, int mobility, int aggression, int resoursefulness, int adaptability, int fertility)
    {
        str = strength;
        mobil = mobility;
        aggro = aggression;
        resor = resoursefulness;
        adapt = adaptability;
        fert = fertility;
    }
}
