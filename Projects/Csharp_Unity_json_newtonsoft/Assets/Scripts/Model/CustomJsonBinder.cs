#nullable enable
using System;
using System.Reflection;
using Newtonsoft.Json.Serialization;

namespace Model
{
    public class CustomJsonBinder : ISerializationBinder
    {
        private readonly Assembly _assembly;
        private readonly string   _namespace;

        public CustomJsonBinder(Assembly assembly, string ns)
        {
            _assembly  = assembly;
            _namespace = ns;
        }

        public Type BindToType(string? assembly_name, string type_name)
        {
            return _assembly.GetType($"{_namespace}.{type_name}");
        }

        public void BindToName(Type serialized_type, out string? assembly_name, out string? type_name)
        {
            throw new NotImplementedException();
        }
    }
}