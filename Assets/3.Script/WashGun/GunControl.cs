using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunControl : MonoBehaviour
{
    [SerializeField] private Transform gunPivot;


    private void Update()
    {
        Debug.DrawRay(transform.position, transform.forward * 10f, Color.red);

        //RotateGun();
    }
    void RotateGun()
    {
        Vector3 crosshairScreenPos = new Vector3(Screen.width / 2f, Screen.height / 2f, 0f);
        Ray ray = Camera.main.ScreenPointToRay(crosshairScreenPos);
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            Vector3 targetPosition = hit.point;
            Vector3 direction = targetPosition - gunPivot.position;
            Quaternion rotation = Quaternion.LookRotation(direction);
            gunPivot.rotation = rotation;
        }
    }
}
