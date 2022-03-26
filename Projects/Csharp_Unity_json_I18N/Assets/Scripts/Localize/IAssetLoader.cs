namespace Example
{
    public interface IAssetLoader
    {
        T Load<T>(string name) where T : UnityEngine.Object;

        void Release(int hash_code);
    }
}