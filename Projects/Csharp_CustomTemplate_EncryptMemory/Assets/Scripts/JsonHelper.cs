using System;
using Newtonsoft.Json;
using UnityEngine;

namespace Scripts
{
    public class JsonHelper
    {
        public static string ToJson(object message) { return JsonConvert.SerializeObject(message); }

        public static object FromJson(string json, Type type) { return JsonConvert.DeserializeObject(json, type); }

        public static T FromJson<T>(string json) { return JsonConvert.DeserializeObject<T>(json); }
    }
}