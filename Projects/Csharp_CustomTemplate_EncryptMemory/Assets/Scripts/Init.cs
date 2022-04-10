using System;
using cfg.bonus;
using Cysharp.Threading.Tasks;
using UnityEngine;

namespace Scripts
{
    public class Init : MonoBehaviour
    {
        private void Awake() { _Init().Forget(Debug.LogError); }

        private async UniTask _Init()
        {
            await ConfigManager.Instance.Load();
            
            // ConfigManager.Instance.Get<Config配置对象>(配置的 id);
        }
    }
}