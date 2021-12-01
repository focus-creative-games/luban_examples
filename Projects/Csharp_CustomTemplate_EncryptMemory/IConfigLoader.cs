using Cysharp.Threading.Tasks;
using UnityEngine;

namespace YOURNAMESPACE
{
    public interface IConfigLoader
    {
        UniTask<TextAsset> Load(int hash_code, string name);

        void Release(int hash_code);
    }
}