using System;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using UnityEngine;

namespace Scripts
{
    public class ConfigManager
    {
        public static ConfigManager Instance => _instance ??= new ConfigManager();

        private static ConfigManager _instance;

        private readonly Dictionary<Type, ACategory> _all_configs = new();


        /// <summary>
        /// 异步加载所有用 Config 标记的配置表
        /// </summary>
        public async UniTask Load()
        {
            var tasks = new List<UniTask>();
            
            try
            {
                _all_configs.Clear();

                List<ACategory> for_load = new List<ACategory>();

                var types = GetType().Assembly.GetTypes();
                
                foreach(Type type in types)
                {
                    object[] attrs = type.GetCustomAttributes(typeof(ConfigAttribute), true);

                    if(attrs.Length == 0)
                    {
                        continue;
                    }

                    object obj = Activator.CreateInstance(type);

                    if(obj is not ACategory icategory)
                    {
                        Debug.LogError($"[ConfigComponent] {type.Name} not inherit form ACategory");
                        continue;
                    }

                    for_load.Add(icategory);
                }

                foreach(ACategory category in for_load)
                {
                    tasks.Add(category.BeginInit());
                }

                await UniTask.WhenAll(tasks);

                foreach(ACategory category in for_load)
                {
                    category.InternalEndInit();
                    category.EndInit();
                    _all_configs[category.GetConfigType] = category;
                }
            }
            catch(Exception e)
            {
                Debug.LogError(e);
            }
        }

        public AConfig GetOne(Type type)
        {
            _all_configs.TryGetValue(type, out var category);

            if(category is null)
            {
                Debug.LogError($"[ConfigComponent] not found key: {type.FullName}");
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
                Debug.LogError($"[ConfigComponent] not found key: {type.FullName}");
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
                Debug.LogError($"[ConfigComponent] not found key: {type.FullName}");
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