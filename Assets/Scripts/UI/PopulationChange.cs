using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PopulationChange : MonoBehaviour
{

    public Slider fedSlider;
    public Slider deadSlider;
    private int counter;
    private int dcounter;
    public int HuntCount = 0;
    public int DeathCount = 25;
    public int MaxPop = 100;
    public int PracticalPop = 100;
    public int FeedRate = 0;
    public int DeathRate = 0;


    public Image fedFill;  // assign in the editor the "Fill"
    public Image deadFill;
    public Color MaxPopColor = Color.green;
    public Color MinPopColor = Color.red;
    public Color DeadColor = Color.grey;

    private void Awake()
    {
        PracticalPop = (MaxPop - DeathCount);
        counter = 0;       // just for testing purposes
        dcounter = 0;
    }


    private void Start()
    {
        fedSlider.wholeNumbers = true; 
        fedSlider.minValue = 0f;
        fedSlider.maxValue = MaxPop;
        fedSlider.value = 0;
        deadSlider.wholeNumbers = true;
        deadSlider.minValue = 0f;
        deadSlider.maxValue = MaxPop;
        deadSlider.value = 0;
    }

    private void Update()
    {
        if (PracticalPop <= counter)
        {
            FeedRate = 0;

        }

        else
        {
            FeedRate = 1;
            counter += FeedRate;
        }

        if ( DeathCount <= dcounter)
        {
            DeathRate = 0;

        }

        else
        {
            DeathRate = 1;
            dcounter += DeathRate;
        }

        UpdatePopChange(counter,dcounter);

    }

    public void UpdatePopChange(int fval,int dval)
    {


        fedSlider.value = fval;
        deadSlider.value = dval;
        deadFill.color = DeadColor;
        Debug.Log(""+HuntCount);
        Debug.Log(PracticalPop);
        fedFill.color = Color.Lerp(MinPopColor, MaxPopColor, (float)fval / MaxPop);
    }
}