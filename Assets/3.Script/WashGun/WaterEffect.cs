using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
public class WaterEffect : MonoBehaviour
{
    private ParticleSystem ps;
    private List<ParticleCollisionEvent> collisionEvents;
    
    private CleanDraw cleanDraw;
    private GameObject cachedTarget;

    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        collisionEvents = new List<ParticleCollisionEvent>();
    }

    void OnParticleCollision(GameObject other)
    {
        if (other != cachedTarget)
        {
            cachedTarget = other;
            cleanDraw = other.GetComponent<CleanDraw>();
        }

        if (cleanDraw == null || cleanDraw.isActiveAndEnabled == false)
            return;

        int numCollisionEvents = ps.GetCollisionEvents(other, collisionEvents);

        for (int i = 0; i < numCollisionEvents; i++)
        {
            ParticleCollisionEvent collisionEvent = collisionEvents[i];

            // 충돌 지점에서 UV 좌표를 계산
            Renderer renderer = other.GetComponent<Renderer>();
            MeshCollider meshCollider = other.GetComponent<MeshCollider>();

            if (renderer != null && meshCollider != null)
            {
                // 충돌 지점의 정보를 사용하여 UV 좌표를 가져옴
                Vector2 uv = GetUVFromMeshCollider(meshCollider, collisionEvent.intersection);
                cleanDraw.Wash(uv);
            }
        }
    }

    Vector2 GetUVFromMeshCollider(MeshCollider meshCollider, Vector3 hitPoint)
    {
        Mesh mesh = meshCollider.sharedMesh;
        Vector3[] vertices = mesh.vertices;
        Vector2[] uvs = mesh.uv;
        int[] triangles = mesh.triangles;

        for (int i = 0; i < triangles.Length; i += 3)
        {
            Vector3 v0 = meshCollider.transform.TransformPoint(vertices[triangles[i]]);
            Vector3 v1 = meshCollider.transform.TransformPoint(vertices[triangles[i + 1]]);
            Vector3 v2 = meshCollider.transform.TransformPoint(vertices[triangles[i + 2]]);

            if (PointInTriangle(hitPoint, v0, v1, v2))
            {
                Vector2 uv0 = uvs[triangles[i]];
                Vector2 uv1 = uvs[triangles[i + 1]];
                Vector2 uv2 = uvs[triangles[i + 2]];

                Vector3 barycentric = GetBarycentricCoordinates(hitPoint, v0, v1, v2);
                Vector2 uv = uv0 * barycentric.x + uv1 * barycentric.y + uv2 * barycentric.z;
                return uv;
            }
        }

        return Vector2.zero;
    }

    bool PointInTriangle(Vector3 p, Vector3 p0, Vector3 p1, Vector3 p2)
    {
        Vector3 v0 = p2 - p0;
        Vector3 v1 = p1 - p0;
        Vector3 v2 = p - p0;

        float dot00 = Vector3.Dot(v0, v0);
        float dot01 = Vector3.Dot(v0, v1);
        float dot02 = Vector3.Dot(v0, v2);
        float dot11 = Vector3.Dot(v1, v1);
        float dot12 = Vector3.Dot(v1, v2);

        float invDenom = 1 / (dot00 * dot11 - dot01 * dot01);
        float u = (dot11 * dot02 - dot01 * dot12) * invDenom;
        float v = (dot00 * dot12 - dot01 * dot02) * invDenom;

        return (u >= 0) && (v >= 0) && (u + v < 1);
    }

    Vector2 GetBarycentricCoordinates(Vector3 p, Vector3 a, Vector3 b, Vector3 c)
    {
        Vector3 v0 = b - a, v1 = c - a, v2 = p - a;
        float d00 = Vector3.Dot(v0, v0);
        float d01 = Vector3.Dot(v0, v1);
        float d11 = Vector3.Dot(v1, v1);
        float d20 = Vector3.Dot(v2, v0);
        float d21 = Vector3.Dot(v2, v1);
        float denom = d00 * d11 - d01 * d01;
        float v = (d11 * d20 - d01 * d21) / denom;
        float w = (d00 * d21 - d01 * d20) / denom;
        float u = 1.0f - v - w;
        return new Vector2(u, v);
    }
    //private ParticleSystem ps;
    //private List<ParticleCollisionEvent> colEventList;

    //private CleanDraw cleanDraw;
    //private GameObject cachedTarget;
    //private void Awake()
    //{
    //    ps = GetComponent<ParticleSystem>();
    //    colEventList = new List<ParticleCollisionEvent>(100);
    //}
    //private void OnParticleCollision(GameObject other)
    //{
    //    if (other != cachedTarget)
    //    {
    //        cachedTarget = other;
    //        cleanDraw = other.GetComponent<CleanDraw>();
    //    }

    //    if (cleanDraw == null || cleanDraw.isActiveAndEnabled == false)
    //        return;

    //    int numColEvents = ps.GetCollisionEvents(other, colEventList);

    //    for (int i = 0; i < numColEvents; i++)
    //    {
    //        cleanDraw.Wash(colEventList[i].intersection);
    //    }
    //}
}
