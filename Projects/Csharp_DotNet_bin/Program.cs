using System;
using System.Globalization;
using System.IO;
using System.Text.Json;
using Luban;

namespace Csharp_Server_DotNetCore
{
    class Program
    {
        static void Main(string[] args)
        {
            var tables = new cfg.Tables(file => new ByteBuf(File.ReadAllBytes("../../../../GenerateDatas/bytes/" + file + ".bytes")));
            Console.WriteLine("== load succ ==");
        }
    }
}
