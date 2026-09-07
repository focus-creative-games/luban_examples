# Agent 指南（MiniTemplate）

本目录是 Luban 最小配置模板。AI / Agent 修改配置时请遵守：

## 硬性约定

1. **Schema 是契约**：不要为了让生成通过而擅自改类型/主键语义；应修数据或与维护者确认后再改 schema。
2. 新表必须写入 `Data/__tables__.xlsx`（或对应 schema），否则不会被收集。
3. Excel sheet 的 A1 必须以 `##` 开头。
4. 分组：`c` 客户端、`s` 服务器、`e` 编辑器。
5. 生成命令见 `gen.bat` / `gen.sh`；校验可加 `--strict`；给 Agent 排错加 `--errorFormat json`。

## 结构

- `luban.conf`：groups / targets / schemaFiles / dataDir
- `Defines/`：XML 定义（若有）
- `Data/`：Excel 数据与 `__tables__` / `__beans__` / `__enums__`
- `output/`：生成数据输出（示例）

## 推荐 Skills

从 Luban 仓库复制：`ai/skills/luban-add-table`、`luban-excel-fill`、`luban-generate-debug`。

## MCP（可选）

配置 `LUBAN_DLL` 后可用 `ListTables` / `GetSchema` / `Validate`。详见文档 `docs/ai/mcp`。
