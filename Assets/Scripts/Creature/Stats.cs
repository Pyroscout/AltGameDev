using System.Collections;
using System.Collections.Generic;
using UnityEngine;

class Stats
{
    int atk; // attack, formerly str/strength
    int def; // defense, formerly aggro
    int evs; // evasion, formerly mobility
    int hunt; // hunt
    int vegCon; // vegitable consumption required
    int meatCon; // meat consumption required
    int meatVal; // meat value of creature
    int lSpn; // lifespan
    int fert; // birth rate

    public Stats()
    {
        atk = 1;
        def = 1;
        evs = 1;
        hunt = 1;
        vegCon = 1;
        meatCon = 1;
        meatVal = 1;
        lSpn = 1;
        fert = 1;
    }

    public Stats(int attack, int defense, int evasion, int hunt, int vegCon, int meatCon, int meatVal, int lifeSpan, int fertility)
    {
        this.atk = attack;
        this.def = defense;
        this.evs = evasion;
        this.hunt = hunt;
        this.vegCon = vegCon;
        this.meatCon = meatCon;
        this.meatVal = meatVal;
        this.lSpn = lifeSpan;
        this.fert = fertility;
    }

    // basic/example trait functions

    public void IncreaseAtk ()
    {
        atk++;
    }

    public void IncreaseAtk(int num)
    {
        atk += num;
    }

    public void DecreaseAtk()
    {
        atk--;
    }

    public void DecreaseAtk(int num)
    {
        atk -= num;
    }

}
