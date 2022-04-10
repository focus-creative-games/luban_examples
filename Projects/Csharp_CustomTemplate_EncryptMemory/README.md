# 内存加密示例

- 当前使用 `Addressable` 管理配置文件的加载，异步使用 `UniTask`
- `Addressable-Importer` 会自动将已经存放在 `Assets/Res/Configs` 文件夹下的 `json` 文件导入 `Group` 中，无需手动拖拽
- `Tests` 中可以查看当前加密的运行效率
    - 目前针对配置表的内存加密仅会用到 `get` 并不会涉及到 `set` 与原生运行速度大概在 `4` 倍左右

## 加密原理

具体源码请查看 `EncryptType.cs` 文件，相对于其他内存加密，这个版本更安全，基本可以阻止绝大多数内存修改器

[原始链接](https://github.com/nichos1983/CSEncryptType)