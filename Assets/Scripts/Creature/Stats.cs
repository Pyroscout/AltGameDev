using System.Collections;
using System.Collections.Generic;
using UnityEngine;

class Stats
{
    int atk; // attack, formerly str/strength
    int def; // defense, formerly aggro
    int evs; // evasion, formerly mobility
    int hnt; // hunt
    int vcon; // vegitable consumption required
    int mcon; // meat consumption required
    int mval; // meat value of creature
    int lspn; // lifespan
    int fert; // birth rate

    public Stats()
    {
        atk = 1;
        def = 1;
        evs = 1;
        hnt = 1;
        vcon = 1;
        mcon = 1;
        mval = 1;
        lspn = 1;
        fert = 1;
    }

    public Stats(int attack, int defense, int evasion, int hunt, int vegcon, int meatcon, int meatval, int lifespan, int fertility)
    {
        atk = attack;
        def = defense;
        evs = evasion;
        hnt = hunt;
        vcon = vegcon;
        mcon = meatcon;
        mval = meatval;
        lspn = lifespan;
        fert = fertility;
    }

    // basic/example trait functions

    public void IncreaseAtk ()
    {
        atk++;
    }

    public void IncreaseAtk(int num)
    {
        atk = atk + num;
    }

    public void DecreaseAtk()
    {
        atk--;
    }

    public void DecreaseAtk(int num)
    {
        atk = atk - num;
    }

    //let me know if functions like these are ok, then I can spam these functions for the rest of the stats

}
