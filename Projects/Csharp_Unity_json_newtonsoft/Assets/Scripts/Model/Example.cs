namespace Model
{
    public class Example
    {
        private ConfigManager _manager;
        
        public void Init<T>(string your_json)
        {
            _manager = new ConfigManager(typeof(Config.AssemblyMarker).Assembly, "Config");

            T result = _manager.FromJson<T>(your_json);
        }
    }
}