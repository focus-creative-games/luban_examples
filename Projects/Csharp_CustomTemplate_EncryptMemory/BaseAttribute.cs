using System;

namespace Nireus.Base
{
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
    public class BaseAttribute : Attribute
    {
        public Type AttributeType { get; }

        public BaseAttribute() { AttributeType = GetType(); }
    }
}