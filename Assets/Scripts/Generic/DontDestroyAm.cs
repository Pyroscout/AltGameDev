using System.Collections;
using UnityEngine;

public class DontDestroyAm: MonoBehaviour
{

    void Awake()
    {
        GameObject[] objs2 = GameObject.FindGameObjectsWithTag("Ambiance");
        if (objs2.Length > 1)
            Destroy(this.gameObject);

        DontDestroyOnLoad(this.gameObject);
    }

}