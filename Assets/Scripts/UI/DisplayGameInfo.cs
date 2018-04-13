using UnityEngine;
using UnityEngine.UI;

public class DisplayGameInfo : MonoBehaviour
{
    public GameObject InfoCanvas;

	// Use this for initialization
	public void show ()
    {
        InfoCanvas.SetActive(true);
	}
	
	// Update is called once per frame
	public void hide ()
    {
        InfoCanvas.SetActive(false);
	}
}
