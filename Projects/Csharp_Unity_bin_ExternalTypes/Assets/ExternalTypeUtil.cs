using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExternalTypeUtil
{
    public static UnityEngine.Color NewFromCfgColor(cfg.test.Color color)
    {
        return new Color(color.R, color.G, color.B, color.A);
    }

    public static System.Numerics.Vector2 NewFromVector2(UnityEngine.Vector2 v)
    {
        return new System.Numerics.Vector2(v.x, v.y);
    }

    public static System.DateTime NewDatetime(int time)
    {
        return new System.DateTime(0);
    }
}
