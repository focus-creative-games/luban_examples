using cfg.item;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Text;

namespace CfgCheck.Modules
{
    [TestClass]
    public class Misc
    {

        [TestMethod]
        public void Check_TreasureBoxConfig()
        {
            // foreach (var itemConfig in ConfigSetUp.Configs.TbItem.DataList)
            // {
            //     var itemId = itemConfig.Id;
            //     if (itemConfig.MajorType == EMajorType.TREASURE_BOX)
            //     {
            //         var boxConfig = (TreasureBox)ConfigSetUp.Configs.TbItemExtra.Get(itemId);
            //         if (itemConfig.MinorType == EMinorType.TREASURE_BOX)
            //         {
            //             Assert.AreNotEqual(0, boxConfig.DropIds.Count, $"宝箱掉落列表不能为空. itemId:{itemId}");
            //         }
            //
            //         if (itemConfig.MinorType == EMinorType.MULTI_CHOOSE_TREASURE_BOX)
            //         {
            //             Assert.AreNotEqual(0, boxConfig.ChooseList.Count, $"多选宝箱 选择列表不能为空. itemId:{itemId}");
            //
            //             foreach (var chooseConfig in boxConfig.ChooseList)
            //             {
            //                 cfg.bonus.DropInfo dropConfig = ConfigSetUp.Configs.TbDrop.Get(chooseConfig.DropId);
            //                 Assert.IsTrue(dropConfig.Bonus is cfg.bonus.Item, $"多选宝箱:{itemId} 中的 掉落id:{chooseConfig.DropId} 对应的bonus必须为 Item 类型");
            //             }
            //         }
            //     }
            // }
        }
    }
}
