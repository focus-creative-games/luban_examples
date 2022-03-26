using System;

namespace Example
{
    [Serializable]
    public abstract class ALocalizeConfig
    {
        public string key;

        public abstract string value { get; }
    }
}