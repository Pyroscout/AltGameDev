using UnityEngine;
using UnityEngine.UI;

public class DisplayGameInfo : MonoBehaviour
{
    public GameObject InfoCanvas;
    public GameObject wing1;
    public GameObject wing2;
    public GameObject totem;
    public GameObject returnbutton;

	// Use this for initialization
	public void show ()
    {
        totem.SetActive(false);
        wing1.SetActive(false);
        wing2.SetActive(false);
        InfoCanvas.SetActive(true);
        returnbutton.SetActive(true);

	}
	
	// Update is called once per frame
	public void hide ()
    {
        wing1.SetActive(true);
        wing2.SetActive(true);
        totem.SetActive(true);
        InfoCanvas.SetActive(false);
        returnbutton.SetActive(false);
	}
}
