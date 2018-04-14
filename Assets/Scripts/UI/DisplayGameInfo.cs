using UnityEngine;
using UnityEngine.UI;

public class DisplayGameInfo : MonoBehaviour
{
    public GameObject informationcanvas;
    public GameObject totem;
    public GameObject wing1;
    public GameObject wing2;

    public bool wantsInfo;

    public void show()
    {
        totem.SetActive(false);
        wing1.SetActive(false);
        wing2.SetActive(false);
        informationcanvas.SetActive(true);
    }

    public void hide()
    {
        totem.SetActive(true);
        wing1.SetActive(true);
        wing2.SetActive(true);
        informationcanvas.SetActive(false);
    }
}
