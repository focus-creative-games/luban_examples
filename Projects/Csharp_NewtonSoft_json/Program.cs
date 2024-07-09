using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.IO;

namespace Csharp_NewtonSoft_json
{
    class Program
    {
        static void Main(string[] args)
        {
            var tables = new cfg.Tables(LoadJson);
            Console.WriteLine("== load succ ==");

           
        }

        private static JArray LoadJson(string file)
        {
            return JsonConvert.DeserializeObject(
                System.IO.File.ReadAllText("../../../../GenerateDatas/json/" + file + ".json")) as JArray;
        }
    }
}
