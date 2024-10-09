using cfg.test;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class TestLoad : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var t = new DemoType2()
        {
            x1 = true,
            x2 = 12,
            x3 = 1384,
            x4 = 11223344,
            x5 = 12345678901234,
            x6 = 1.5f,
            x7 = 1.2345678,
            x8 = 12345,
            x80 = 1122,
            x9 = 11223344,
            x10 = "walon",
            x12 = new DemoType1() { x1 = 12 },
            x13 = DemoEnum.D,
            x14 = new DemoD2() { x1 = 1, x2 = 2 },
            t1 = "2000-01-01 10:10:10",
            k1 = new int[] { 1, 2, 3 },
            k2 = new List<int> { 2, 3, 4 },
            k5 = new HashSet<int> { 1, 2 },
            k8 = new Dictionary<int, int> { { 1, 10 }, { 2, 20 } },
            k9 = new List<DemoE2> { new DemoE2 { y1 = 1, y2 = false }, new DemoE2 { y1 = 2, y2 = true } },
            k15 = new DemoDynamic[] { new DemoD2 { x1 = 11, x2 = 22 }, new DemoE1 { x1 = 12, x3 = 32, x4 = 5 } },
        };

        string fileA1 = Application.dataPath + "/../a1.json";
        string fileA2 = Application.dataPath + "/../a2.json";
        t.SaveJsonFile(fileA1);

        var t2 = new DemoType2();
        t2.LoadJsonFile(fileA1);
        t2.SaveJsonFile(fileA2);

        Debug.Assert(File.ReadAllText(fileA1, System.Text.Encoding.UTF8) == File.ReadAllText(fileA2, System.Text.Encoding.UTF8));


        //string fileD1 = Application.dataPath + "/../d1.json";
        //string fileD2 = Application.dataPath + "/../d2.json";

        //var d = new DemoD2();
        //d.LoadJsonFile(fileD1);
        //d.SaveJsonFile(fileD2);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
