//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace editor.cfg.test
{
    public static partial class ETestEmptyEnum
    {

        private static readonly System.Collections.Generic.List<Bright.Config.EditorEnumItemInfo> __items = new System.Collections.Generic.List<Bright.Config.EditorEnumItemInfo>
        {
        };

        public static System.Collections.Generic.List<Bright.Config.EditorEnumItemInfo> GetItems() => __items;

        public static Bright.Config.EditorEnumItemInfo GetByName(string name)
        {
            return __items.Find(c => c.Name == name);
        }

        public static Bright.Config.EditorEnumItemInfo GetByNameOrAlias(string name)
        {
            return __items.Find(c => c.Name == name || c.Alias == name);
        }

        public static Bright.Config.EditorEnumItemInfo GetByValue(int value)
        {
            return __items.Find(c => c.Value == value);
        }
    }
}