using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public HexGrid hexGrid;

    int generationNum;

    public Dictionary<string, int> creatures = new Dictionary<string, int>();

    void Awake()
    {
        generationNum = 1;
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void NextGen()
    {
        generationNum++;
    }
}
