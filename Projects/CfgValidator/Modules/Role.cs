using cfg.item;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace CfgCheck.Modules
{
    [TestClass]
    public class Role
    {
        [TestMethod]
        public void Check_LevelConsequence()
        {
            // int curLevel = 0;
            // foreach (var cfgLevel in ConfigSetUp.Configs.TbRoleLevelExpAttr.DataList)
            // {
            //     ++curLevel;
            //     Assert.AreEqual(curLevel, cfgLevel.Level, "等级定义不连续");
            // }
        }

        [TestMethod]
        public void Check_DropBonusItem_ShouldAllBeContainedInLevelCoefficientBonus()
        {
            // var CoefficientDropBonus = ConfigSetUp.Configs.TbDrop.DataList;
            // foreach (var dropItem in CoefficientDropBonus)
            // {
            //     var curBonus = dropItem.Bonus;
            //     if (curBonus is cfg.bonus.CoefficientItem c)
            //     {
            //         var bonusId = c.BonusId;
            //         var bonusList = c.BonusList;
            //         var dropTypeSet = bonusList.ItemList.Select(c => c.ItemId).Distinct();
            //         var levelBonusCoefficientCfg = ConfigSetUp.Configs.TbRoleLevelBonusCoefficient.Get(bonusId).DistinctBonusInfos;
            //         var bonusTypeSet = levelBonusCoefficientCfg.SelectMany(c => c.BonusInfo).Select(c => (int)c.Type).Distinct();
            //         foreach (var item in dropTypeSet)
            //         {
            //             Assert.IsTrue(bonusTypeSet.Contains(item), $"类型{ConfigSetUp.Configs.TbItem.Get(item).MinorType} 没有在等级系数表里配置 等级系数奖励编号: {bonusId}");
            //         }
            //     }
            // }
        }

    }
}
