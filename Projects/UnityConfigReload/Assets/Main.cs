using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        ConfigComponent.Instance = new ConfigComponent();
        ConfigComponent.Instance.LoadConfig();
    }
}
