using System.Reflection;
using Newtonsoft.Json;

namespace Model
{
    public class ConfigManager
    {
        private JsonSerializerSettings _settings;

        public ConfigManager(Assembly assembly, string ns)
        {
            _settings = new JsonSerializerSettings
            {
                TypeNameHandling = TypeNameHandling.Auto, SerializationBinder = new CustomJsonBinder(assembly, ns)
            };
        }

        public T FromJson<T>(string json, JsonSerializerSettings settings = null)
        {
            return JsonConvert.DeserializeObject<T>(json, settings ?? _settings);
        }
    }
}