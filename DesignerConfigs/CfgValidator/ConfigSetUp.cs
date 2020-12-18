using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
using Bright.Serialization;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CfgCheck;

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
            var configDir = "../../../config_data";
            Configs = new cfg.Tables(file => new ByteBuf(File.ReadAllBytes(configDir + "/" + file)));
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
