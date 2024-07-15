using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NozzleRotation : MonoBehaviour
{
    private Animator nozzle_anim;
    [SerializeField]
    private Animator crosshair_anim;
    private bool isRotate = false;
    private void Start()
    {
        nozzle_anim = GetComponent<Animator>();
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            isRotate = !isRotate;
            nozzle_anim.SetBool("Rotate", isRotate);
            crosshair_anim.SetBool("Rotate", isRotate);
        }
        
    }
}
