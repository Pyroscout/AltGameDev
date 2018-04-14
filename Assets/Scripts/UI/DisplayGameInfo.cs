using UnityEngine;
using UnityEngine.UI;

public class DisplayGameInfo : MonoBehaviour
{
    public GameObject InfoCanvas;

	public void show ()
    {
        InfoCanvas.SetActive(true);
	}
	
	public void hide ()
    {
        InfoCanvas.SetActive(false);
	}
}
