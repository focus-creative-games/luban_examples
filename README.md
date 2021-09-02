# luban_examples

一个示例工程，包含

- Tools 

    Luban.Client及Luban.Server程序，用于生成代码和数据。
- DesignerConfigs 

    示例游戏配置。
- CfgValidator 

    一个高级自定义配置检验工程。可以添加一些自定义的工具不能支持的高级检查，以单元测试的形式实现。常见工作流是这样的：策划填写数据，完成后用 **简单检查.bat** 检查有没有数据错误，在完成所有填写并准备提交到svn之前，运行 **高级自定义检查.bat**，进行更复杂完整的检查。如果有错误，返回修正，再重新运行 **高级自定义检查.bat**，直到没有错误为止。

    添加自定义单元测试的方法请直接参考项目内已有的代码。

- Projects 一些覆盖常见平台、引擎、语言的示例项目

- Benchmark 性能测试项目

    [性能测试报告](Benchmark/benchmark.md)


## 准备工作

Projects里的项目都已经过测试，已经包含了生成代码和数据，可以直接运行。

默认Luban.Client使用云生成，需要启动Luban.Server。新上手用户，推荐使用Luban.ClientServer替代Luban.Client

将运行脚本中%LUBAN_CLIENT%变量的Luban.Client/Luban.Client 改为 Luban.ClientServer/Luban.ClientServer，同时删除 -h (--host ) 选项及其参数（如果指定了-h选项，则不启动内嵌Luban.Server，使用云生成）。

Luban.ClientServer是Luban.Client的功能超集，可以完全替代Luban.Client。

## 支持与联系
   
   发issue不一定能及时看到，有问题请尽量加QQ群: 692890842 （Luban开发交流群） 反馈，往往能快速得到解决。