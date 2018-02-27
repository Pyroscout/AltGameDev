using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats
{
    public int atk; // attack, formerly str/strength
    public int def; // defense, formerly aggro
    public int evs; // evasion, formerly mobility
    public int hunt; // hunt
    public int vegCon; // vegitable consumption required
    public int meatCon; // meat consumption required
    public int meatVal; // meat value of creature
    public int lSpn; // lifespan
    public int fert; // birth rate

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

}
