using System;
using UnityEngine;

namespace Example
{
    public class LocalizeConfigAttribute : Attribute
    {
        public readonly SystemLanguage language;

        public LocalizeConfigAttribute(SystemLanguage language) => this.language = language;
    }
}