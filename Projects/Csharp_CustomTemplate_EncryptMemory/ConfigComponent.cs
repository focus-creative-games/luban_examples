using System;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;

namespace Nireus.Base
{
    internal class ConfigComponentAwakeSystem : AwakeSystem<ConfigComponent, IConfigLoader>
    {
        public override void Awake(ConfigComponent self, IConfigLoader loader) { self.Awake(loader); }
    }

    public class ConfigComponent : Entity
    {
        public static ConfigComponent Instance { get; private set; }

        public IConfigLoader loader;

        private readonly Dictionary<Type, ACategory> _all_configs = new Dictionary<Type, ACategory>();

        internal void Awake(IConfigLoader loader)
        {
            this.loader = loader;
            Instance    = this;
        }

        /// <summary>
        /// 异步加载所有用 Config 标记的配置表
        /// </summary>
        public async UniTask Load()
        {
            using var tasks = ListComponent<UniTask>.Create();
            try
            {
                _all_configs.Clear();

                HashSet<Type>   types    = Game.EventSystem.GetTypes(typeof(ConfigAttribute));
                List<ACategory> for_load = new List<ACategory>();
                foreach(Type type in types)
                {
                    object[] attrs = type.GetCustomAttributes(typeof(ConfigAttribute), true);

                    if(attrs.Length == 0)
                    {
                        continue;
                    }

                    object obj = Activator.CreateInstance(type);

                    if(!(obj is ACategory icategory))
                    {
                        Log.Error($"[ConfigComponent] {type.Name} not inherit form ACategory");
                        continue;
                    }

                    for_load.Add(icategory);
                }

                foreach(ACategory category in for_load)
                {
                    tasks.Add(category.BeginInit(Instance.loader));
                }

                await UniTask.WhenAll(tasks.List);

                foreach(ACategory category in for_load)
                {
                    category.InternalEndInit();
                    category.EndInit();
                    _all_configs[category.GetConfigType] = category;
                }
            }
            catch(Exception e)
            {
                Log.Error(e);
            }
        }

        public AConfig GetOne(Type type)
        {
            _all_configs.TryGetValue(type, out var category);

            if(category is null)
            {
                Log.Error($"[ConfigComponent] not found key: {type.FullName}");
                return null;
            }

            return category.GetOne();
        }

        public T GetOne<T>() where T : AConfig { return(T) GetOne(typeof(T)); }

        public AConfig Get(Type type, int id)
        {
            _all_configs.TryGetValue(type, out var category);

            if(category is null)
            {
                Log.Error($"[ConfigComponent] not found key: {type.FullName}");
                return null;
            }

            return category.TryGet(id);
        }

        public T Get<T>(int id) where T : AConfig { return(T) Get(typeof(T), id); }

        public AConfig[] GetAll(Type type)
        {
            _all_configs.TryGetValue(type, out var category);

            if(category is null)
            {
                Log.Error($"[ConfigComponent] not found key: {type.FullName}");
                return null;
            }

            return category.GetAll();
        }

        public AConfig[] GetAll<T>() where T : AConfig { return GetAll(typeof(T)); }

        public ACategory GetCategory(Type type)
        {
            _all_configs.TryGetValue(type, out var category);
            return category;
        }

        public ACategory GetCategory<T>() where T : AConfig { return GetCategory(typeof(T)); }
    }
}