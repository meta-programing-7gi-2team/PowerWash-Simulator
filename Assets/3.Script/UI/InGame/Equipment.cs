using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Equipment : MonoBehaviour
{
    [SerializeField]
    private Image extensionImage;
    [SerializeField]
    private RectTransform extensionRect;
    [SerializeField]
    private Image nozzleImage;
    [SerializeField]
    private Sprite[] extensionSprite;
    [SerializeField]
    private Sprite[] nozzleSprite;

    private NozzleControl nozzle;
    private ExtensionControl extension;

    private void Start()
    {
        nozzle = FindObjectOfType<NozzleControl>();
        extension = FindObjectOfType<ExtensionControl>();
    }
    private void Update()
    {
        extensionImage.sprite = extensionSprite[extension.index];
        extensionRect.sizeDelta = new Vector2(100 + 50 * extension.index, 61); 
        nozzleImage.sprite = nozzleSprite[nozzle.index];
    }
}
