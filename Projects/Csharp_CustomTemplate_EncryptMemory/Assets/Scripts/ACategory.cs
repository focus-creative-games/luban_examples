using System;
using System.Collections.Generic;
using System.Linq;
using Cysharp.Threading.Tasks;
using UnityEngine;
using UnityEngine.AddressableAssets;

namespace Scripts
{
    [Config]
    public abstract class ACategory
    {
        public abstract Type      GetConfigType { get; }
        public abstract AConfig   GetOne();
        public abstract AConfig[] GetAll();
        public abstract AConfig   TryGet(int id);

        public abstract UniTask BeginInit();

        internal abstract void InternalEndInit();

        public abstract void EndInit();

        public abstract void TranslateText(Func<string, string, string> translator);
    }

    public abstract class ACategory<T> : ACategory where T : AConfig
    {
        protected Dictionary<int, T> dict;

        public override Type GetConfigType => typeof(T);

        public override AConfig GetOne() { return dict.Values.GetEnumerator().Current; }

        public override AConfig[] GetAll() { return dict.Values.ToArray(); }

        public override AConfig TryGet(int id)
        {
            dict.TryGetValue(id, out var config);

            return config;
        }

        public override async UniTask BeginInit()
        {
            var handle = Addressables.LoadAssetAsync<TextAsset>(typeof(T).Name);

            try
            {
                dict = new Dictionary<int, T>();

                TextAsset text_asset = await handle;

                if(text_asset is null || string.IsNullOrEmpty(text_asset.text))
                {
                    return;
                }

                dict = JsonHelper.FromJson<Dictionary<int, T>>(text_asset.text);

                foreach(var pair in dict)
                {
                    pair.Value.id = pair.Key;
                }
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                Addressables.Release(handle);
            }
        }

        internal override void InternalEndInit()
        {
            foreach(var config in dict.Values)
            {
                config.EndInit();
            }
        }

        public override void EndInit() { }

        public override void TranslateText(Func<string, string, string> translator) { }
    }
}