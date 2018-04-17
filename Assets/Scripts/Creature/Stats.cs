using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats
{
    public int atk; // attack, formerly str/strength
    public int def; // defense, formerly aggro
    public int evs; // evasion, formerly mobility
    public int hunt; // hunt

    public int vegCon; // vegetable consumption required
    public int meatCon; // meat consumption required
    public int meatVal; // meat value of creature
    public int lSpn; // lifespan
    public int fert; // birth rate, survivability

    public bool isherbivore;
    public bool iscarnivore;

    public Size size;
    public enum Size { small = 1, med, large };

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

        isherbivore = false;
        iscarnivore = false;

        size = Size.small;
    }



}
