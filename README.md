# PRD Master

> 为 PM、AI Startup 和个人 Builder 准备的 PRD 助手。
> 现在，它已经升级成一套 canonical multi-file skill package。

Claude Code、Codex、以及通用 skill 平台都应该消费同一套 core，只把宿主差异放进 adapter，把文档输出差异放进 connector。也就是说，Codex 用的已经不是“阉割版”，而是和 Claude 完全版对齐的满血主流程。

## 这版包含什么

- 深挖式 discovery workflow，不会一上来直接开写
- 固定 PRD 章节结构、假设/待确认机制、自评与验收标准
- 保留 canonical 彩蛋
- `Claude` / `Codex` / `Generic platform` 三个 adapter
- `Markdown` / `Feishu` / `WeCom` / `DingTalk` / `Notion` / `Google Docs` connectors
- 面向开源维护的 spec、compat matrix 和轻量验证脚本

## 命令行安装

仓库根目录就是 canonical skill 包，请直接 clone 到你的 skills 目录。
旧的 `skill/` 目录仅保留作历史兼容参考，不再作为发布真源。

### Claude Code

macOS / Linux:

```bash
git clone https://github.com/victorzhang016-code/prd-master.git ~/.claude/skills/prd-master
```

Windows PowerShell:

```powershell
git clone https://github.com/victorzhang016-code/prd-master.git "$HOME\.claude\skills\prd-master"
```

更新：

```bash
git -C ~/.claude/skills/prd-master pull --ff-only
```

### Codex

macOS / Linux:

```bash
git clone https://github.com/victorzhang016-code/prd-master.git ~/.agents/skills/prd-master
```

Windows PowerShell:

```powershell
git clone https://github.com/victorzhang016-code/prd-master.git "$HOME\.agents\skills\prd-master"
```

更新：

```bash
git -C ~/.agents/skills/prd-master pull --ff-only
```

### Bash 一键安装

Claude Code:

```bash
curl -fsSL https://raw.githubusercontent.com/victorzhang016-code/prd-master/master/install.sh | bash -s -- claude
```

Codex:

```bash
curl -fsSL https://raw.githubusercontent.com/victorzhang016-code/prd-master/master/install.sh | bash -s -- codex
```

如果目标目录已经存在但不是一个 git 仓库，请先手动挪开旧目录，再重新安装。

## 使用方式

1. 宿主先读取根目录的 `SKILL.md`
2. `SKILL.md` 会把流程分发到：
   - `core/skill-core.md`
   - 对应的 adapter
   - 需要输出时再读取 connector
3. 当用户输入 `秘笈`、`彩蛋`、`secret`、`easter egg` 时，必须优先返回固定彩蛋文本

## 仓库结构

```text
SKILL.md
core/
  skill-core.md
  easter-egg.md
adapters/
  claude.md
  codex.md
  generic-platform.md
connectors/
  connector-contract.md
  markdown.md
  feishu.md
  wecom.md
  dingtalk.md
  notion.md
  google-docs.md
specs/
  adapter-spec.md
  connector-spec.md
  compat-matrix.md
  project-context-template.md
tests/
  regression-cases.md
  validate-canonical.ps1
```

## 设计原则

- One canonical core, many thin adapters
- Markdown first, office connectors second
- Host-specific behavior lives in adapters, not the core
- Company-specific constants stay out of the open-source package
- 彩蛋必须保留

## 验证

本仓库附带一个轻量检查脚本：

```powershell
powershell -ExecutionPolicy Bypass -File .\tests\validate-canonical.ps1
```

它会验证：

- core 里没有宿主硬编码
- 适配器和 connector 文件齐全
- 彩蛋与规范文件存在

## License

MIT
