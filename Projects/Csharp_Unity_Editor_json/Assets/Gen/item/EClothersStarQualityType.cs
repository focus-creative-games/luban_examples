//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace editor.cfg.item
{

    public enum EClothersStarQualityType
    {
        /// <summary>
        /// 一星
        /// </summary>
        ONE = 1,
        /// <summary>
        /// 二星
        /// </summary>
        TWO = 2,
        /// <summary>
        /// 三星
        /// </summary>
        THREE = 3,
        /// <summary>
        /// 四星
        /// </summary>
        FOUR = 4,
        /// <summary>
        /// 五星
        /// </summary>
        FIVE = 5,
        /// <summary>
        /// 六星
        /// </summary>
        SIX = 6,
        /// <summary>
        /// 七星
        /// </summary>
        SEVEN = 7,
        /// <summary>
        /// 八星
        /// </summary>
        EIGHT = 8,
        /// <summary>
        /// 九星
        /// </summary>
        NINE = 9,
        /// <summary>
        /// 十星
        /// </summary>
        TEN = 10,
    }

    public static partial class EClothersStarQualityType_Metadata
    {
        public static readonly Bright.Config.EditorEnumItemInfo ONE = new Bright.Config.EditorEnumItemInfo("ONE", "一星", 1, "一星");
        public static readonly Bright.Config.EditorEnumItemInfo TWO = new Bright.Config.EditorEnumItemInfo("TWO", "二星", 2, "二星");
        public static readonly Bright.Config.EditorEnumItemInfo THREE = new Bright.Config.EditorEnumItemInfo("THREE", "三星", 3, "三星");
        public static readonly Bright.Config.EditorEnumItemInfo FOUR = new Bright.Config.EditorEnumItemInfo("FOUR", "四星", 4, "四星");
        public static readonly Bright.Config.EditorEnumItemInfo FIVE = new Bright.Config.EditorEnumItemInfo("FIVE", "五星", 5, "五星");
        public static readonly Bright.Config.EditorEnumItemInfo SIX = new Bright.Config.EditorEnumItemInfo("SIX", "六星", 6, "六星");
        public static readonly Bright.Config.EditorEnumItemInfo SEVEN = new Bright.Config.EditorEnumItemInfo("SEVEN", "七星", 7, "七星");
        public static readonly Bright.Config.EditorEnumItemInfo EIGHT = new Bright.Config.EditorEnumItemInfo("EIGHT", "八星", 8, "八星");
        public static readonly Bright.Config.EditorEnumItemInfo NINE = new Bright.Config.EditorEnumItemInfo("NINE", "九星", 9, "九星");
        public static readonly Bright.Config.EditorEnumItemInfo TEN = new Bright.Config.EditorEnumItemInfo("TEN", "十星", 10, "十星");

        private static readonly System.Collections.Generic.List<Bright.Config.EditorEnumItemInfo> __items = new System.Collections.Generic.List<Bright.Config.EditorEnumItemInfo>
        {
            ONE,
            TWO,
            THREE,
            FOUR,
            FIVE,
            SIX,
            SEVEN,
            EIGHT,
            NINE,
            TEN,
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
