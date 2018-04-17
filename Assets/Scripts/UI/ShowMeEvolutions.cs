using UnityEngine;
using UnityEngine.UI;

public class ShowMeEvolutions : MonoBehaviour
{
    public Creature myCreature;
    public GameObject Evolution1;
    public GameObject Evolution2;
    public GameObject Evolution3;
    public GameObject Evolution4;


    public void retrieveStats()
    {
        for (int i = 0; i < 4; i++)
        {
            Evolution1.GetComponent<Image>().sprite = Resources.Load<Sprite>(myCreature.traits[0].imagePath);
            Evolution2.GetComponent<Image>().sprite = Resources.Load<Sprite>(myCreature.traits[1].imagePath);
            Evolution3.GetComponent<Image>().sprite = Resources.Load<Sprite>(myCreature.traits[2].imagePath);
            Evolution4.GetComponent<Image>().sprite = Resources.Load<Sprite>(myCreature.traits[3].imagePath);
        }
            
    }


}
