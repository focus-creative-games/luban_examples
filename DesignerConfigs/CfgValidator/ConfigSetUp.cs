using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
using Bright.Serialization;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CfgCheck;
using System.Text.Json;

namespace CfgCheck
{
    [TestClass]
    public class ConfigSetUp
    {
        public static cfg.Tables Configs { get; set; }

        [AssemblyInitialize]
        public static void Initialize(TestContext testContext)
        {
            LoadConfig();
        }

        public static void LoadConfig()
        {
            Configs = new cfg.Tables(LoadJson);
        }

        private static JsonElement LoadJson(string file)
        {
            var configDir = "../../../../../Projects/GenerateDatas/json";
            return JsonDocument.Parse(File.ReadAllBytes(Path.Combine(configDir, file + ".json"))).RootElement;
        }

        [AssemblyCleanup]
        public static void CleanUp()
        {
            Close();
        }

        public static void Init()
        {

        }

        public static void Close()
        {

        }

    }
}
