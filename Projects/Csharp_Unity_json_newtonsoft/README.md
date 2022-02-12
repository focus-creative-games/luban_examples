# Newtonsoft 使用

在多态序列化时，直接使用 `Newtonsoft` 作为解析时，会出现无法有效生成的情况，针对这个问题，需要对 `json` 进行重新绑定

> 其原理非常简单，`ISerializationBinder` 继承此类，重写 `BindToType` 方法，通过 `string` 转成 `type`

由 `Newtonsoft` 序列化出来的多态 `json` 格式如下

```json
"$type":"Namespace.xxxClass, Assembly"
...
```

如果你在 `Luban` 的表格中填写了 `Namespace`，生成的格式如下

```json
"$type":"Namespace.xxxClass"
...
```

如果你 **没有** 在 `Luban` 的表格中填写 `Namespace`，而是在 `Tpl` 文件中强制生成的，那么生成的格式如下:

```json
"$type":"xxxClass"
...
```

注意查看当前 `Luban` 导出的 `json` 格式是否正确，然后根据这个格式，对 `Bind` 函数进行调整即可

