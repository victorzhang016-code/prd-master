# PRD Master 📝

> 用 Claude Code 写 PRD，从 3 小时压缩到 30 分钟

[English](#english) | [中文](#中文)

---

## 中文

PRD Master 是一个 Claude Code 的 skill，帮你结构化地编写高质量产品需求文档。它不是模板填空，而是和你一起想清楚问题的产品搭档。

### ✨ 核心特性

| 特性 | 说明 |
|------|------|
| 🎯 **深度追问** | 不是直接给答案，而是先帮你挖清楚需求 |
| 📋 **8 章结构** | 固定章节顺序，覆盖问题→方案→数据→验收完整链路 |
| 📊 **数据驱动** | 强制要求北极星指标、过程指标、埋点设计 |
| 🔍 **自评体系** | 5 维度质量检查（问题定义/方案完整性/数据指标/可执行性/埋点覆盖）|
| 🚀 **飞书集成** | 一键推送 PRD 到飞书文档并通知团队 |
| 💾 **项目记忆** | 自动维护项目上下文，不用每次重复介绍背景 |
| 🎨 **审美优先** | 要求用 Figma 画流程图，文档要好看 |
| 📝 **下结论** | 有方案对比时给出推荐，不列选项让用户选 |

### 🚀 快速开始

#### 1. 安装 Claude Code
```bash
npm install -g @anthropic-ai/claude-code
```

#### 2. 添加 Skill
```bash
# 进入你的项目目录
cd your-project

# 将 skill 文件复制到 .claude/skills/
mkdir -p .claude/skills/prd-master
cp /path/to/prd-master/skill/SKILL.md .claude/skills/prd-master/
```

#### 3. 开始使用
打开 Claude Code，直接说：
```
帮我写个 PRD，做一个用户邀请功能
```

### 📖 使用示例

#### 场景 1：从 0 开始写功能 PRD
```
用户：帮我写个 PRD，做智能客服机器人

Claude：你好！我是你的产品搭档。先问你几个问题：
1. 这是哪个产品的功能？
2. 用户现在遇到的具体痛点是什么？
...
```

#### 场景 2：已有草稿，需要完善
```
用户：我整理了一个需求，帮我看看有没有漏的
[粘贴内容]

Claude：收到，我先过一遍。发现几个问题：
- 边界情况没覆盖网络超时场景
- 缺少具体的埋点设计
...
```

#### 场景 3：推送到飞书
```
用户：推飞书

Claude：好的，正在创建飞书文档...
✅ 文档已创建：https://feishu.cn/docx/xxxxx
需要通知谁吗？
```

### 🏗️ PRD 结构模板

PRD Master 使用固定的 8 章结构：

```markdown
# {功能名}

## 一、为什么做这个
- 现在的问题（带数据）
- 我们要做什么
- 做完之后用户感受

## 二、怎么做
- 核心流程（Figma 流程图）
- 关键细节

## 三、技术方案
| 方案 | 好处 | 坏处 | 结论 |

## 四、字段定义
| 字段 | 类型 | 说明 |

## 五、边界情况
| 如果…… | 处理方式 |

## 六、数据分析
- 现状数据
- 假设与推算

## 七、怎么算做好了
- 北极星指标
- 过程指标
- 验收标准

## 八、埋点
| 事件名 | 触发时机 | 必传字段 | 用来验证 |
```

### 📁 项目结构

```
.claude/
└── skills/
    └── prd-master/
        ├── SKILL.md              # 主 skill 文件
        └── references/
            └── {project-slug}.md # 项目上下文文件
```

### 🤝 贡献指南

欢迎 PR 和 Issue！请确保：
1. 代码/文档通过所有测试
2. 更新 CHANGELOG.md
3. 遵循现有的写作风格

### 📜 License

MIT License © 2025

---

## English

PRD Master is a Claude Code skill that helps you write high-quality Product Requirements Documents in a structured way. It's not a template filler—it's a product partner that thinks through problems with you.

### ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🎯 **Deep Inquiry** | Doesn't give answers directly; helps you clarify requirements first |
| 📋 **8-Section Structure** | Fixed chapter order covering problem → solution → data → acceptance criteria |
| 📊 **Data-Driven** | Enforces north star metrics, process metrics, and tracking design |
| 🔍 **Self-Review** | 5-dimension quality check |
| 🚀 **Lark Integration** | One-click push to Lark Docs and team notification |
| 💾 **Project Memory** | Auto-maintains project context |
| 🎨 **Aesthetic First** | Requires Figma flowcharts, docs should look good |
| 📝 **Decision Maker** | Gives recommendations, not just options |

### 🚀 Quick Start

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code

# Copy skill to your project
mkdir -p .claude/skills/prd-master
cp skill/SKILL.md .claude/skills/prd-master/
```

Then just tell Claude: "Help me write a PRD for [feature]"

### 📜 License

MIT License © 2025
