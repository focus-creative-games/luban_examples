
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace cfg.test
{
    [System.Flags]
    public enum AccessFlag
    {
        WRITE = 1,
        READ = 2,
        TRUNCATE = 4,
        NEW = 8,
        READ_WRITE = WRITE|READ,
    }

    public static class AccessFlag_Metadata
    {
        public static readonly Luban.EditorEnumItemInfo WRITE = new Luban.EditorEnumItemInfo("WRITE", "", 1, "");
        public static readonly Luban.EditorEnumItemInfo READ = new Luban.EditorEnumItemInfo("READ", "", 2, "");
        public static readonly Luban.EditorEnumItemInfo TRUNCATE = new Luban.EditorEnumItemInfo("TRUNCATE", "", 4, "");
        public static readonly Luban.EditorEnumItemInfo NEW = new Luban.EditorEnumItemInfo("NEW", "", 8, "");
        public static readonly Luban.EditorEnumItemInfo READ_WRITE = new Luban.EditorEnumItemInfo("READ_WRITE", "", 3, "");

        private static readonly System.Collections.Generic.List<Luban.EditorEnumItemInfo> __items = new System.Collections.Generic.List<Luban.EditorEnumItemInfo>
        {
            WRITE,
            READ,
            TRUNCATE,
            NEW,
            READ_WRITE,
        };

        public static System.Collections.Generic.List<Luban.EditorEnumItemInfo> GetItems() => __items;

        public static Luban.EditorEnumItemInfo GetByName(string name)
        {
            return __items.Find(c => c.Name == name);
        }

        public static Luban.EditorEnumItemInfo GetByNameOrAlias(string name)
        {
            return __items.Find(c => c.Name == name || c.Alias == name);
        }

        public static Luban.EditorEnumItemInfo GetByValue(int value)
        {
            return __items.Find(c => c.Value == value);
        }
    }

} 

