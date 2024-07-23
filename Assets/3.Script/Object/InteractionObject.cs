using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class InteractionObject : MonoBehaviour
{
    [SerializeField] protected LayerMask layer;
    public LayerMask Layer => layer;
    public bool isOnAct { get; protected set; }

    public abstract void OnAct(InteractionController interactionController);
    public abstract void NotAct(InteractionController interactionController);
    public abstract void OnMove(RaycastHit hit);
}
