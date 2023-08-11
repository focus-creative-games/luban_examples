using System.Linq;
using CfgCheck;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CfgCheck.Modules
{
    [TestClass]
    public class Mail
    {
        [TestMethod]
        public void SystemMailAwardTest_NotEmpty()
        {
            // var mailConfig = ConfigSetUp.Configs.TbSystemMail;
            //
            // // 接下来就可以对邮件配置表进行check操作啦
            // // 下面是检查奖励是否为空的demo示例
            // // 建议测试用例的命名规则 使用 MethodName_ExpectedBehavior这样的方式
            //
            // var mailList = mailConfig.DataList;
            // foreach (var mailItem in mailList)
            // {
            //     Assert.IsNotNull(mailItem.Award);
            // }
        }

    }
}
