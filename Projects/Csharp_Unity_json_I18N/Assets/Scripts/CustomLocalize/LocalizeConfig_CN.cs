using System;
using Newtonsoft.Json;
using UnityEngine;

namespace Example
{
    [Serializable]
    public class LocalizeConfig_CN : ALocalizeConfig
    {
        [JsonProperty]
        public string text_cn { get; private set; }

        public override string value => text_cn;
    }

    [LocalizeConfig(SystemLanguage.Chinese)]
    public class LocalizeConfig_CN_Category : ALocalizeCategory<LocalizeConfig_CN>
    {
    }
}