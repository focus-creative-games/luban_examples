using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using proto.test;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        {
            var t1 = new AllType(default)
            {
                X5 = 10,
                A1 = "abc",
                A4 = new Child2() { A1 = 1, A20 = 10 },
            };
            var buf = new ByteBuf();
            t1.Serialize(buf);

            var t2 = new AllType();
            t2.Deserialize(buf);
            Debug.Assert(t1.X5 == t2.X5);
            Debug.Assert(t1.A1 == t2.A1);
            Debug.Assert(t1.A4.GetType() == t2.A4.GetType() && t1.A4.A1 == t2.A4.A1);
        }
        {
            var t1 = new TestNullable();
            var buf = new ByteBuf();
            t1.Serialize(buf);
            var t2 = new TestNullable();
            t2.Deserialize(buf);
            Debug.Assert(t2.F1 == null);
            Debug.Assert(t2.F2 == null);
            Debug.Assert(t2.F3 == null);
            Debug.Assert(t2.F4 == null);
        }
        {
            var t1 = new TestNullable()
            {
                F1 = 1,
                F2 = "abc",
                F3 = new Simple() { X = 1, Y = 2 },
                F4 = new Child2() { A1 = 1, A20 = 10 },
            };
            var buf = new ByteBuf();
            t1.Serialize(buf);
            var t2 = new TestNullable();
            t2.Deserialize(buf);
            Debug.Assert(t2.F1 == t1.F1);
            Debug.Assert(t2.F2 == t1.F2);
            Debug.Assert(t2.F3.X == t1.F3.X && t2.F3.Y == t1.F3.Y);
            Debug.Assert(t2.F4.A1 == t1.F4.A1 && t1.F4.GetType() == t2.F4.GetType());
        }

        UnityEngine.Debug.Log("== load succ==");
    }

}
