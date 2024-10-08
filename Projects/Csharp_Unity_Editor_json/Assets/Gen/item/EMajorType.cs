
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace cfg.item
{
    public enum EMajorType
    {
        /// <summary>
        /// 货币
        /// </summary>
        CURRENCY = 1,
        /// <summary>
        /// 服装
        /// </summary>
        CLOTH = 2,
        /// <summary>
        /// 任务
        /// </summary>
        QUEST = 3,
        /// <summary>
        /// 消耗品
        /// </summary>
        CONSUMABLES = 4,
        /// <summary>
        /// 宝箱
        /// </summary>
        TREASURE_BOX = 5,
        /// <summary>
        /// 成就和称谓
        /// </summary>
        ACHIEVEMENT_AND_TITLE = 6,
        /// <summary>
        /// 头像框
        /// </summary>
        HEAD_FRAME = 7,
        /// <summary>
        /// 语音
        /// </summary>
        VOICE = 8,
        /// <summary>
        /// 动作
        /// </summary>
        ACTION = 9,
        /// <summary>
        /// 扩容道具
        /// </summary>
        EXPANSION = 10,
        /// <summary>
        /// 制作材料
        /// </summary>
        MATERIAL = 11,
    }

    public static class EMajorType_Metadata
    {
        public static readonly Luban.EditorEnumItemInfo CURRENCY = new Luban.EditorEnumItemInfo("CURRENCY", "货币", 1, "货币");
        public static readonly Luban.EditorEnumItemInfo CLOTH = new Luban.EditorEnumItemInfo("CLOTH", "服装", 2, "服装");
        public static readonly Luban.EditorEnumItemInfo QUEST = new Luban.EditorEnumItemInfo("QUEST", "任务", 3, "任务");
        public static readonly Luban.EditorEnumItemInfo CONSUMABLES = new Luban.EditorEnumItemInfo("CONSUMABLES", "消耗品", 4, "消耗品");
        public static readonly Luban.EditorEnumItemInfo TREASURE_BOX = new Luban.EditorEnumItemInfo("TREASURE_BOX", "宝箱", 5, "宝箱");
        public static readonly Luban.EditorEnumItemInfo ACHIEVEMENT_AND_TITLE = new Luban.EditorEnumItemInfo("ACHIEVEMENT_AND_TITLE", "成就和称谓", 6, "成就和称谓");
        public static readonly Luban.EditorEnumItemInfo HEAD_FRAME = new Luban.EditorEnumItemInfo("HEAD_FRAME", "头像框", 7, "头像框");
        public static readonly Luban.EditorEnumItemInfo VOICE = new Luban.EditorEnumItemInfo("VOICE", "语音", 8, "语音");
        public static readonly Luban.EditorEnumItemInfo ACTION = new Luban.EditorEnumItemInfo("ACTION", "动作", 9, "动作");
        public static readonly Luban.EditorEnumItemInfo EXPANSION = new Luban.EditorEnumItemInfo("EXPANSION", "扩容道具", 10, "扩容道具");
        public static readonly Luban.EditorEnumItemInfo MATERIAL = new Luban.EditorEnumItemInfo("MATERIAL", "制作材料", 11, "制作材料");

        private static readonly System.Collections.Generic.List<Luban.EditorEnumItemInfo> __items = new System.Collections.Generic.List<Luban.EditorEnumItemInfo>
        {
            CURRENCY,
            CLOTH,
            QUEST,
            CONSUMABLES,
            TREASURE_BOX,
            ACHIEVEMENT_AND_TITLE,
            HEAD_FRAME,
            VOICE,
            ACTION,
            EXPANSION,
            MATERIAL,
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

