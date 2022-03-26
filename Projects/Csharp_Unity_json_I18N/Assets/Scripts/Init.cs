using System;
using UnityEngine;

namespace Example
{
    public class Init : MonoBehaviour
    {
        private void Awake()
        {
            // TODO 写自己的加载方式
            LocalizeConfig config = new LocalizeConfig(
                null,
                SystemLanguage.Chinese,
                SystemLanguage.English,
                null
            );

            new LocalizeComponent(config);

            // 配表相关内容加载完毕后, 翻译一下
            // TODO 可以不需要这个内容, 具体看自己配表对象中是否有对应的翻译生命周期
            LocalizeComponent.on_language_change?.Invoke();
        }
    }
}