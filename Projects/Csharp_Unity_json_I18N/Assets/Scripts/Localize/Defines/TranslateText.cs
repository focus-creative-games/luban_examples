using System;
using Newtonsoft.Json;

namespace Example
{
    [Serializable]
    public class TranslateText
    {
        [JsonProperty]
        public string key { get; private set; }

        [JsonProperty]
        public string text { get; private set; }

        public TranslateText() { LocalizeComponent.on_language_change += Translate; }

        public void Translate() { text = LocalizeComponent.Instance.GetText(this); }
    }
}