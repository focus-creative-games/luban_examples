using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;
using SimpleJSON;
using editor.cfg.test;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var t = new DemoType2()
        {
            X1 = true,
            X2 = 12,
            X3 = 1384,
            X4 = 11223344,
            X5 = 12345678901234,
            X6 = 1.5f,
            X7 = 1.2345678,
            X8 = 12345,
            X80 = 1122,
            X9 = 11223344,
            X10 = "walon",
            X12 = new DemoType1() { X1 = 12 },
            X13 = "A",
            X14 = new DemoD2() { X1 = 1, X2 = 2 },
            S1 = new Bright.Config.EditorText("/axx/key1", "hello"),
            V2 = new System.Numerics.Vector2(1, 2),
            V3 = new System.Numerics.Vector3(2, 3, 4),
            V4 = new System.Numerics.Vector4(1, 2, 3, 4),
            T1 = "2000-01-01 10:10:10",
            K1 = new int[] { 1, 2, 3 },
            K2 = new List<int> { 2, 3, 4 },
            K5 = new HashSet<int> { 1, 2 },
            K8 = new Dictionary<int, int> { { 1, 10 }, { 2, 20 } },
            K9 = new List<DemoE2> { new DemoE2 { Y1 = 1, Y2 = false }, new DemoE2 { Y1 = 2, Y2 = true } },
            K15 = new DemoDynamic[] { new DemoD2 { X1 = 11, X2 = 22 }, new DemoE1 { X1 = 12, X3 = 32, X4 = 5 } },
        };

        string fileA = Application.dataPath + "/../a.json";
        string fileB = Application.dataPath + "/../b.json";
        t.SaveJsonFile(fileA);

        var t2 = new DemoType2();
        t2.LoadJsonFile(fileA);
        t2.SaveJsonFile(fileB);

        Debug.Assert(File.ReadAllText(fileA, System.Text.Encoding.UTF8) == File.ReadAllText(fileB, System.Text.Encoding.UTF8));
    }

    // Update is called once per frame
    void Update()
    {

    }
}
