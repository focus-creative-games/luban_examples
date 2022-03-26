# 基于 Newtonsoft 本地化的适配

## 反序列化适配

Luban 本身提供了 `text` 这个特殊的关键字，但是在生成 `json` 时，会生成一个对象，如下：

```json
"变量名": {
    "key": "Test",
    "text": "翻译内容"
}
```

这样会导致我们无法正确反序列化回配表对象，所以需要修改模板文件，并增加一个自定义的翻译类 `TranslateText` 用于承载这个部分的反序列化

> `bean.tpl` 就做了一件事，检测到当前 `field` 是需要翻译的，那么生成一个 `string` 对象 和一个 `TranslateText` 对象，并将 `string` 对象指向 `TranslateText.text`

原理非常简单，就可以完整适配 `Luban` 的 `text` 功能

## 多语言拆分

首先配置多语言时，请最好不要使用 `excel` 文件，而是统一使用 `csv`，多语言的版本冲突会非常非常严重，这个部分还是交给 `git merge` 完成

在配置时，我们一定不希望一个语言一个表，这样会导致翻译非常痛苦，而且导出的多语言文件却需要一个语言对应一个 `json` 文件，所以需要在这个部分做一些手脚，对列进行裁剪，具体可以查看 `LocalizeParam.xml` 和 `LocalizeConfig.csv` 文件

其原理就是借助了 `Luban` 的继承功能，不得不感叹这些基础设计可以极大方便了这里的使用场景

## 新语言适配

新语言适配非常简单，修改 `LocalizeParam.xml` 增加一个新的类，这里是给 `Luban` 解析生成时使用的，注意！我们真实代码中并不用这个，仅仅是为了服务于 `Luban` 解析生成

在代码文件中按照下方定义一份新的

```csharp
[Serializable]
public class LocalizeConfig_CN : ALocalizeConfig
{
    [JsonProperty]
    public string text_cn { get; private set; }

    public override string value => text_cn;
}

[LocalizeConfig(SystemLanguage.Chinese)]
public class LocalizeConfig_CN_Category : ALocalizeCategory<LocalizeConfig_CN>
{
}
```

最后，在生成代码的脚本中删除 `Localize` 相关的 `cs` 文件即可，这样我们就完成了一个和语言和列名完全不绑定的本地化组件了

```shell
rm -rf C#/Client/LocalizeConfig_*
```

