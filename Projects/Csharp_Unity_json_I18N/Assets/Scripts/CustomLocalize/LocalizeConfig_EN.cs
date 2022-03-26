using System;
using Newtonsoft.Json;
using UnityEngine;

namespace Example
{
    [Serializable]
    public class LocalizeConfig_EN : ALocalizeConfig
    {
        [JsonProperty]
        public string text_en { get; private set; }

        public override string value => text_en;
    }

    [LocalizeConfig(SystemLanguage.English)]
    public class LocalizeConfig_EN_Category : ALocalizeCategory<LocalizeConfig_EN>
    {
    }
}