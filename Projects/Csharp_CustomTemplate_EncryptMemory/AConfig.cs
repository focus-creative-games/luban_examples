using System;
using Newtonsoft.Json;

namespace YOURNAMESPACE
{
    public class AConfig
    {
        [JsonProperty]
        public int id { get; internal set; }

        public virtual void TranslateText(Func<string, string, string> translator) { }

        public virtual void EndInit() { }
    }
}