using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[RequireComponent(typeof(Slider))]
[RequireComponent(typeof(RectTransform))]
public class PopChange : MonoBehaviour
{

    private Slider _slider;
    private float _sliderSize;
    private int counter;

    public int MaxPopulation = 100;
    public Image Fill;  // assign in the editor the "Fill"
    public Color MaxPopulationColor = Color.green;
    public Color MinPopulationColor = Color.red;



    void Awake()
    {
        _slider = GetComponent<Slider>();
    }

    private void Start()
    {
        _slider.wholeNumbers = true;        // I dont want 3.543 Health but 3 or 4
        //_slider.minValue = 0f;
        //_slider.maxValue = MaxPopulation;
        //_slider.value = MaxPopulation;        // start with full health
    }

    void Update()
    {
        UpdateSliderSense();
        //UpdatePopulationChange(counter);        // just for testing purposes
        //counter++;                        // just for testing purposes
    }
    public void UpdateSliderSense()
    {
        if (_sliderSize == 0)
        {
            _sliderSize = GetComponent<RectTransform>().rect.width;
            _sliderSize = _sliderSize / (_slider.maxValue - _slider.minValue);
        }
        float sliderFill = _sliderSize * _slider.value;
        _slider.fillRect.rotation = new Quaternion(0, 0, 0, 0);
        _slider.fillRect.pivot = new Vector2(_slider.fillRect.transform.parent.localPosition.x/sliderFill, _slider.fillRect.pivot.y);
        if (_slider.value > 0)
        {
            _slider.fillRect.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, _sliderSize * _slider.value);
            Fill.color = Color.green;
        }

        else
        {
            _slider.fillRect.Rotate(0, 0, 180);
            _slider.fillRect.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, -1 * _sliderSize * _slider.value);
            Fill.color = Color.red;
        }
        _slider.fillRect.localPosition = new Vector3(0, 0, 0);
    }

    public void UpdatePopulationChange(int val)
    {
        _slider.value = val;
        //Fill.color = Color.Lerp(MinPopulationColor, MaxPopulationColor, (float)val / MaxPopulation);
    }
}