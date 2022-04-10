# SpriteAtals 配合鲁班时需要的工具

部分情况下，`SpriteAtals` 不会即使更新 `m_PackedSpriteNamesToIndex` 属性下每一个资源的名字，所以需要强制重新生成图集

在 `Library/AtalsCache/` 文件夹下，会按照 `hash` 存放每一个图集的缓存，正常情况下，对 `SpriteAtals` 点击 `preview` 时，会重新生成这个图集，且 `m_PackedSpriteNamesToIndex` 的值会得到有效的维护，但是就是会有一些情况会无法生成

具体的工具思路也很简单，获取到当前 `SpriteAtals` 的 `hash` 然后删了那个文件，再重新生成即可，具体阅读 `Assets/UnityFriend` 代码即可