
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace cfg.item
{
    public enum EClothesHidePartType
    {
        /// <summary>
        /// 胸部
        /// </summary>
        CHEST = 0,
        /// <summary>
        /// 手
        /// </summary>
        HEAD = 1,
        /// <summary>
        /// 脊柱上
        /// </summary>
        SPINE_UPPER = 2,
        /// <summary>
        /// 脊柱下
        /// </summary>
        SPINE_LOWER = 3,
        /// <summary>
        /// 臀部
        /// </summary>
        HIP = 4,
        /// <summary>
        /// 腿上
        /// </summary>
        LEG_UPPER = 5,
        /// <summary>
        /// 腿中
        /// </summary>
        LEG_MIDDLE = 6,
        /// <summary>
        /// 腿下
        /// </summary>
        LEG_LOWER = 7,
    }

    public static class EClothesHidePartType_Metadata
    {
        public static readonly Luban.EditorEnumItemInfo CHEST = new Luban.EditorEnumItemInfo("CHEST", "胸部", 0, "胸部");
        public static readonly Luban.EditorEnumItemInfo HEAD = new Luban.EditorEnumItemInfo("HEAD", "手", 1, "手");
        public static readonly Luban.EditorEnumItemInfo SPINE_UPPER = new Luban.EditorEnumItemInfo("SPINE_UPPER", "脊柱上", 2, "脊柱上");
        public static readonly Luban.EditorEnumItemInfo SPINE_LOWER = new Luban.EditorEnumItemInfo("SPINE_LOWER", "脊柱下", 3, "脊柱下");
        public static readonly Luban.EditorEnumItemInfo HIP = new Luban.EditorEnumItemInfo("HIP", "臀部", 4, "臀部");
        public static readonly Luban.EditorEnumItemInfo LEG_UPPER = new Luban.EditorEnumItemInfo("LEG_UPPER", "腿上", 5, "腿上");
        public static readonly Luban.EditorEnumItemInfo LEG_MIDDLE = new Luban.EditorEnumItemInfo("LEG_MIDDLE", "腿中", 6, "腿中");
        public static readonly Luban.EditorEnumItemInfo LEG_LOWER = new Luban.EditorEnumItemInfo("LEG_LOWER", "腿下", 7, "腿下");

        private static readonly System.Collections.Generic.List<Luban.EditorEnumItemInfo> __items = new System.Collections.Generic.List<Luban.EditorEnumItemInfo>
        {
            CHEST,
            HEAD,
            SPINE_UPPER,
            SPINE_LOWER,
            HIP,
            LEG_UPPER,
            LEG_MIDDLE,
            LEG_LOWER,
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

