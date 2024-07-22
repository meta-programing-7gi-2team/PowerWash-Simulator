using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Blueprint_State
{
    NotArrange,
    Arrange,
    Block
}

public class Blueprint : MonoBehaviour
{
    [SerializeField]
    private Material[] mat;
    [SerializeField]
    private MeshRenderer[] part;

    public Blueprint_State state { get; private set; }
    public Vector3 pos { get; private set; }
    public Quaternion rot { get; private set; }
    public float valueY { get; private set; }

    private void Start()
    {
        state = Blueprint_State.NotArrange;
        pos = transform.position;
        rot = transform.rotation;
        valueY = transform.GetChild(1).localPosition.y;
    }
    private void OnEnable()
    {
        state = Blueprint_State.NotArrange;
    }
    private void Update()
    {
        switch (state)
        {
            case Blueprint_State.NotArrange:
                part[0].material = mat[0];
                part[1].material = mat[0];
                break;
            case Blueprint_State.Arrange:
                part[0].material = mat[1];
                part[1].material = mat[1];
                break;
            case Blueprint_State.Block:
                part[0].material = mat[2];
                part[1].material = mat[2];
                break;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        state = Blueprint_State.Block;
    }
    private void OnTriggerExit(Collider other)
    {
        state = Blueprint_State.NotArrange;
    }
    public void SetBlueprintState(Blueprint_State state)
    {
        this.state = state;
    }
}
