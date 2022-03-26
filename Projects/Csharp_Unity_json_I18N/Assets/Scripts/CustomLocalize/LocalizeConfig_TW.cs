using System;
using Newtonsoft.Json;
using UnityEngine;

namespace Example
{
    [Serializable]
    public class LocalizeConfig_TW : ALocalizeConfig
    {
        [JsonProperty]
        public string text_tw { get; private set; }

        public override string value => text_tw;
    }

    [LocalizeConfig(SystemLanguage.ChineseTraditional)]
    public class LocalizeConfig_TW_Category : ALocalizeCategory<LocalizeConfig_TW>
    {
    }
}