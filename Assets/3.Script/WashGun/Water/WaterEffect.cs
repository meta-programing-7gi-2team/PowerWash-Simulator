using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
public class WaterEffect : MonoBehaviour
{
    private ParticleSystem ps;
    private List<ParticleCollisionEvent> colEventList;

    private CleanDraw cleanDraw;
    private GameObject cachedTarget;
    private void Awake()
    {
        ps = GetComponent<ParticleSystem>();
        colEventList = new List<ParticleCollisionEvent>(100);
    }
    private void OnParticleCollision(GameObject other)
    {
        if (other != cachedTarget)
        {
            cachedTarget = other;
            cleanDraw = other.GetComponent<CleanDraw>();
        }

        if (cleanDraw == null || cleanDraw.isActiveAndEnabled == false)
            return;

        int numColEvents = ps.GetCollisionEvents(other, colEventList);

        for (int i = 0; i < numColEvents; i++)
        {
            cleanDraw.Wash(colEventList[i].intersection);
        }
    }
}
