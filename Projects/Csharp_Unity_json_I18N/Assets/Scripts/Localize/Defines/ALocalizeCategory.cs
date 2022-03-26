using System.Collections.Generic;
using Newtonsoft.Json;
using UnityEngine;

namespace Example
{
    public abstract class ALocalizeCategory
    {
        public abstract void Deserialize(TextAsset asset);

        public abstract bool TryGetValue(string key, out string value);

        public abstract bool TryGetValue(TranslateText text, out string value);

        public abstract void Clear();

        public abstract string Name();

        public abstract ALocalizeConfig GetData(string key);

        public abstract void TrimExcess();
    }

    public class ALocalizeCategory<T> : ALocalizeCategory where T : ALocalizeConfig
    {
        private Dictionary<string, T> _dict;

        public override void Deserialize(TextAsset asset)
        {
            _dict = JsonConvert.DeserializeObject<Dictionary<string, T>>(asset.text);
        }

        public override bool TryGetValue(string key, out string value)
        {
            value = string.Empty;
            _dict.TryGetValue(key, out var data);

            if(data is null)
            {
                return false;
            }

            value = data.value;

            return!string.IsNullOrEmpty(value);
        }

        public override bool TryGetValue(TranslateText text, out string value)
        {
            value = text.key;

            _dict.TryGetValue(text.key, out var data);

            if(data is null || string.IsNullOrEmpty(data.value))
            {
                return false;
            }

            value = data.value;

            return!string.IsNullOrEmpty(value);
        }

        public override void Clear() { _dict?.Clear(); }

        public override string Name() { return typeof(T).Name; }

        public override ALocalizeConfig GetData(string key)
        {
            if(_dict is null)
            {
                return null;
            }

            _dict.TryGetValue(key, out var data);

            return data;
        }

        public override void TrimExcess() { _dict.TrimExcess(); }
    }
}