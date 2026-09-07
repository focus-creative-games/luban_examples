# Agent 指南（DataTables）

完整配置示例。除 MiniTemplate 约定外，额外注意：

## 结构

- `Defines/*.xml`：模块化 schema（item、ai、l10n、test…）
- `Data/`：多格式数据（Excel / json / lua / xml / yaml…）
- `luban.conf`：含 `test`/`client`/`server`/`editor`/`all` 等 target
- `check.bat` / `check.sh`：校验示例（含 path / l10n）

## 约定

1. 改 XML schema 时保持模块边界，避免把无关类型塞进同一文件。
2. 引用校验使用表全名（如 `item.TbItem`）；改名后全局搜索更新 `#ref=`。
3. `t` group 默认非导出，仅测试 target 使用。
4. 复杂样例（多态、变体、tag、多数据源）先对照现有文件再扩展。
5. 校验：

```bat
dotnet Luban.dll -t all -f --conf luban.conf --strict --errorFormat json ^
  -x pathValidator.rootDir=... ^
  -x l10n.textProviderFile=*@Data/l10n/texts.json
```

## Skills

建议安装：`luban-schema-design`、`luban-validator`、`luban-generate-debug`、`luban-add-table`。

## 工程集成

真正的多语言/引擎集成示例在仓库 `Projects/` 下；改生成命令时同时核对这些工程的 `-c/-d` 与 output 目录。
