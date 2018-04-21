using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats
{
    // attack
    int atk;
    public int Attack
    {
        get
        {
            //if(atk > 1)
            //{
            //    return 1;
            //}
            return atk;
        }
        set
        {
            atk = value;
        }
    }

    // defense
    int def;
    public int Defense
    {
        get
        {
            //if (def > 1)
            //{
            //    return 1;
            //}
            return def;
        }
        set
        {
            def = value;
        }
    }

    // evasion
    int evs;
    public int Evasion
    {
        get
        {
            //if (evs > 1)
            //{
            //    return 1;
            //}
            return evs;
        }
        set
        {
            evs = value;
        }
    }

    // ability to gather food
    int hunt;
    public int Hunt
    {
        get
        {
           // if (hunt > 1)
            //{
            //    return 1;
            //}
            return hunt;
        }
        set
        {
            hunt = value;
        }
    }

    // meat value of creature
    int meatVal;
    public int MeatValue
    {
        get
        {
            //if (meatVal > 1)
            //{
            //    return 1;
            //}
            return meatVal;
        }
        set
        {
            meatVal = value;
        }
    }

    // birth rate, survivability
    int fert;
    public int Fert
    {
        get
        {
            //if (fert > 1)
            //{
             //   return 1;
            //}
            return fert;
        }
        set
        {
            fert = value;
        }
    }

    public int vegCon; // vegetable consumption required
    public int meatCon; // meat consumption required
    public int lSpn; // lifespan

    public Size size;
    public enum Size { small = 1, med, large };

    public bool Carnivorous;
    public bool Herbivorous;

    public Stats()
    {
        Attack = 1;
        Defense = 1;
        Evasion = 1;
        Hunt = 1;

        MeatValue = 1;
        Fert = 1;

        vegCon = 1;
        meatCon = 1;
        lSpn = 1;

        Herbivorous = true;

        size = Size.small;
    }



}
