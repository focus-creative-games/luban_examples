# Agent 指南（Luban 配置工程）

请按项目实际情况修改本文件中的路径与命令。

## 硬性约定

1. Schema 是契约：数据不符合应报错，不要静默改定义凑生成成功。
2. 新表必须在 schema（`__tables__` 或 XML）中登记。
3. Excel sheet A1 必须以 `##` 开头。
4. 分组：`c` 客户端、`s` 服务器、`e` 编辑器（以 `luban.conf` 为准）。
5. 发布流水线使用 `--strict`；Agent 排错使用 `--errorFormat json`。

## 常用命令

```bash
# 生成（示例，请改成项目真实参数）
dotnet Luban.dll --conf luban.conf -t client -c cs-bin -d bin \
  -x outputCodeDir=../Gen -x outputDataDir=../Data

# 校验
dotnet Luban.dll --conf luban.conf -t all -f --strict --errorFormat json -x outputSaver=null

# 导出 schema
dotnet Luban.dll --conf luban.conf -t all -c schema-json -x outputCodeDir=./schema-out
```

## Skills

建议安装：`luban-add-table`、`luban-schema-design`、`luban-excel-fill`、`luban-generate-debug`、`luban-validator`。
