using Bright.Serialization;
using System;
using System.IO;
using System.Text.Json;
using System.Threading.Tasks;

namespace Csharp_Server_DotNetCore
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var tables = new cfg.Tables();
            await tables.LoadAsync(file => Task.Run(() => JsonDocument.Parse(System.IO.File.ReadAllBytes("../../../../GenerateDatas/json/" + file + ".json")).RootElement));

            Console.WriteLine("== load succ ==");
        }
    }
}
