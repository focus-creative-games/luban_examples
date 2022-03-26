using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;

namespace Example
{
    public class LocalizeComponent
    {
        public static LocalizeComponent Instance { get; private set; }

        public static Action on_language_change;

        /// <summary>
        /// 实际上使用的语言
        /// </summary>
        public SystemLanguage actual_language { get; private set; }

        /// <summary>
        /// 本地化对应的类型
        /// </summary>
        private readonly Dictionary<SystemLanguage, ALocalizeCategory> _localize_type = new();

        /// <summary>
        /// 注入的配置
        /// </summary>
        private LocalizeConfig _config;

        /// <summary>
        /// 当前语言环境下的所有数据
        /// </summary>
        private ALocalizeCategory _current;

        public LocalizeComponent(LocalizeConfig config)
        {
            Instance = this;

            // TODO 适配你自己项目的 gettype 方式
            var types = GetType().Assembly.GetTypes();

            foreach(var type in types)
            {
                var attr = type.GetCustomAttribute<LocalizeConfigAttribute>();

                if(attr is null)
                {
                    continue;
                }

                var handler = Activator.CreateInstance(type) as ALocalizeCategory;

                if(handler is null)
                {
                    continue;
                }

                _localize_type.Add(attr.language, handler);
            }

            _config = config;
        }

        /// <summary>
        /// 切换系统语言, 提供动态修改
        /// 如果没有必要, 请在 Awake 时赋值
        /// </summary>
        /// <param name="language"></param>
        public void SwitchLanguage(SystemLanguage language)
        {
            // 实际上使用的语言和配置中的当前语言一致
            // 那么认为本次切换无效
            if(actual_language == _config.current_language)
            {
                return;
            }

            // 释放已经加载的配置文件
            _config.loader.Release(GetHashCode());

            _config.current_language = language;

            Reload();

            on_language_change?.Invoke();
        }

        public void Reload()
        {
            actual_language = _config.current_language;

            _localize_type.TryGetValue(actual_language, out _current);

            if(_current is null)
            {
                _localize_type.TryGetValue(_config.default_language, out _current);
                actual_language = _config.default_language;
            }

            if(_current is null)
            {
                throw new ArgumentException($"[Localize] language is invalid, current = {_config.current_language}");
            }

            var text_asset = _config.loader.Load<TextAsset>(_current.Name());

            _current.Clear();

            // 先对当前语言进行序列化

            _current.Deserialize(text_asset);

            // TODO 增加初始内容的本地化
            // foreach(ALocalizeConfig data in _config.init_datas)
            // {
            //     _localize_datas[data.key] = data;
            //     _default_datas[data.key]  = data;
            // }

            _current.TrimExcess();
        }

        public string GetText(string key)
        {
            _current.TryGetValue(key, out var result);
            return result;
        }

        public string GetText(TranslateText text)
        {
            _current.TryGetValue(text, out var result);

            return result;
        }
    }
}