using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stats
{
    // attack
    public int atk
    {
        get
        {
            if(atk > 1)
            {
                return 1;
            }
            return atk;
        }
        set
        {
            atk = value;
        }
    }

    // defense
    public int def
    {
        get
        {
            if (def > 1)
            {
                return 1;
            }
            return def;
        }
        set
        {
            def = value;
        }
    }

    // evasion
    public int evs
    {
        get
        {
            if (evs > 1)
            {
                return 1;
            }
            return evs;
        }
        set
        {
            evs = value;
        }
    } 

    // ability to gather food
    public int hunt
    {
        get
        {
            if (hunt > 1)
            {
                return 1;
            }
            return hunt;
        }
        set
        {
            hunt = value;
        }
    }

    // meat value of creature
    public int meatVal
    {
        get
        {
            if (meatVal > 1)
            {
                return 1;
            }
            return meatVal;
        }
        set
        {
            meatVal = value;
        }
    }

    // birth rate, survivability
    public int fert
    {
        get
        {
            if (fert > 1)
            {
                return 1;
            }
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
