using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Shape
{
    NotArrange,
    Arrange,
    Block
}

public class LadderShape : MonoBehaviour
{
    [SerializeField]
    private Material[] mat;
    [SerializeField]
    private MeshRenderer[] part;

    public Shape state { get; private set; }
    public Vector3 pos { get; private set; }
    public Quaternion rot { get; private set; }
    public float valueY { get; private set; }

    private void Start()
    {
        state = Shape.NotArrange;
        pos = transform.position;
        rot = transform.rotation;
        valueY = transform.GetChild(1).transform.localPosition.y;
    }
    private void OnEnable()
    {
        state = Shape.NotArrange;
    }
    private void Update()
    {
        switch (state)
        {
            case Shape.NotArrange:
                part[0].material = mat[0];
                part[1].material = mat[0];
                break;
            case Shape.Arrange:
                part[0].material = mat[1];
                part[1].material = mat[1];
                break;
            case Shape.Block:
                part[0].material = mat[2];
                part[1].material = mat[2];
                break;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        state = Shape.Block;
    }
    private void OnTriggerExit(Collider other)
    {
        state = Shape.NotArrange;
    }
    public void SetShape(Shape shape)
    {
        state = shape;
    }
}
