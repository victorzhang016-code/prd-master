# PRD Master 📝

> 为 PM、AI Startup 和个人 Builder 打造的 PRD 助手。帮你挖需求，说人话，把 PRD 真正交付出去。
>
> 以及……一点独门秘笈。

---

## 它是谁

PRD Master 是一个可以运行在 Claude Code、Codex 以及其他主流 AI Agent 上的 PRD Skill，专为 **PM**、**AI Startup 团队**和**产品小白**设计。来自一个既干过大厂，又加入过 AI Startup 的非典型产品经理。

我知道你们的风格——点子多、执行猛，唯独有时候对复杂的结构化文档……免疫。PRD 已死，原型当立！但很多复杂需求又必须要靠 PRD 精确定义。

所以我换了个思路：**能不能让海盗也快速写出结构清晰、自己还爱看的 PRD？**

这就是 PRD Master。我自己用了几个月，非常好用。现在它会先帮你钉住核心问题，给出一张需求判断卡，再把文档写到自己和同事都能看懂、也能继续推进的程度。写完之后，还可以继续导出成 Markdown，或者推送到团队正在使用的办公工具里。

---

## 三个绝活

### 1️⃣ 帮你挖需求

不是扔一句话就噼里啪啦开始写，而是先帮你把几件最容易被跳过的事问清楚：

- 用户到底遇到了什么具体事件？
- 他本来想完成什么？
- 现在坏掉的承诺是什么？
- 什么结果才算真的解决？

然后再补竞品、替代方案和当前人工 workaround。**带你一起把事情想清楚**，而不是填完模板发现漏了关键逻辑。

### 2️⃣ 说人话

大部分 PRD，尤其是 AI 写的，语言习惯极其反人类，充满黑话。

PRD Master 输出的东西是给**真实的人**看的——

- 清晰，没废话
- 敢下结论，不列选项让你选
- 能不用专有名词就不用

### 3️⃣ 把 PRD 交付出去

写完不止停在聊天窗口里：

- 默认先生成标准 Markdown
- 可以继续创建和整理办公文档
- 根据当前工具和权限，支持飞书、企业微信、钉钉、Notion、Google Docs 等连接器
- 如果外部工具不可用，也会保留完整 Markdown，不让你的 PRD 丢在最后一步
- 正式交付前，会强制走一轮上下文隔离的对抗式审查，把漏洞、边界和假成功信号先挑出来

以前写完 PRD 最烦的就是这些「最后一公里」，现在至少有人陪你把它走完。

写完之后，它还会补一份自评，把功能是否跑通、这件事是否真有价值分开看。可以配合其他强力的产品 Skills 一起使用。

---

## 哇，还有彩蛋 🥚

输入以下任意关键词：

```text
秘笈
彩蛋
secret
easter egg
```

大师会传授给你他做产品的独门秘笈。


---

## 一键安装

这个仓库的根目录保留了完整的 canonical Skill 包，直接 clone 就能用。

### Claude Code

macOS / Linux：

```bash
git clone https://github.com/victorzhang016-code/prd-master.git ~/.claude/skills/prd-master
```

Windows PowerShell：

```powershell
git clone https://github.com/victorzhang016-code/prd-master.git "$HOME\.claude\skills\prd-master"
```

### Codex

macOS / Linux：

```bash
git clone https://github.com/victorzhang016-code/prd-master.git ~/.agents/skills/prd-master
```

Windows PowerShell：

```powershell
git clone https://github.com/victorzhang016-code/prd-master.git "$HOME\.agents\skills\prd-master"
```

### 更新 Skill

Claude Code：

```bash
git -C ~/.claude/skills/prd-master pull --ff-only
```

Codex：

```bash
git -C ~/.agents/skills/prd-master pull --ff-only
```

Windows PowerShell：

```powershell
git -C "$HOME\.claude\skills\prd-master" pull --ff-only
git -C "$HOME\.agents\skills\prd-master" pull --ff-only
```

安装完成后，告诉你的 AI 助手：

```text
帮我写个 PRD，做一个 xx 功能
```

跟着引导走就行。

---

## 使用示例

### 场景 1：从 0 开始写功能 PRD

```text
用户：帮我写个 PRD，做智能客服机器人

AI：好，我们先不急着写。
这个机器人具体服务谁？用户在什么场景下会遇到问题？
如果不做这个功能，现在是怎么解决的？
```

### 场景 2：把需求想清楚

```text
用户：我想做一个 AI 求职助手

AI：这个产品主要解决“找不到工作”，还是解决“不会准备面试”？
用户什么时候最需要它？
你希望它替用户完成什么，又明确不做什么？
```

### 场景 3：推送到办公工具

```text
用户：把这份 PRD 推到飞书

AI：我会先整理出标准 Markdown，
然后根据当前可用的工具和权限创建文档。
如果无法完成最后一步，也会保留完整 Markdown 结果。
```

### 场景 4：彩蛋

```text
用户：秘笈
```

---

## PRD 结构（8 章）

```markdown
# {功能名}

## 一、决策摘要
## 二、用户、场景与证据
## 三、竞品与替代方案研究
## 四、目标、范围与约束
## 五、本类型的核心方案
## 六、推进与验证方式
## 七、风险、依赖与开放决策
## 八、埋点与指标
```

固定是 8 章，但内容会跟着文档类型走，不会为了“像 PRD”硬塞一堆不该出现的段落。

写完之后，还会附带一份 PRD 自评，检查问题定义、证据质量、边界条件、可执行性，以及“功能完成度”和“产品价值”这两层指标。

---

## 设计细节

- **项目记忆**：Skill 会读取当前 Agent 支持的上下文文件，或使用 `docs/product-context/` 下的产品上下文，不用每次都解释「我们是做什么的」
- **先钉核心问题**：每次开写前，都会先产出一张需求判断卡，把 observed event、user job、broken contract 和 solved state 说清楚
- **方法论驱动**：Skill 里写的是通用的 PRD 经验和方法论，不是硬塞一份模板；竞品、替代方案和人工 workaround 研究是必做项
- **对抗式审查**：初版写完后，必须交给一个不继承上下文的新 Agent 做审查，不能在原聊天里自己演自己
- **边界条件必写**：实施型 PRD 默认带上 eligibility、异常输入、失败恢复、兼容性、隐私与信任边界
- **双层指标**：把“功能有没有跑通”和“改动值不值得保留”拆开看，减少假成功
- **多 Agent 适配**：Claude Code、Codex 和其他 Skill 平台使用同一套完整的核心能力
- **Markdown 优先**：所有外部推送都先生成标准 Markdown，外部工具不可用时也不会丢失产出
- **办公工具连接**：支持根据环境连接飞书、企业微信、钉钉、Notion 和 Google Docs

---

## 项目结构

```text
prd-master/
├── SKILL.md
├── core/
│   ├── skill-core.md
│   ├── adversarial-review.md
│   └── easter-egg.md
├── adapters/
├── connectors/
├── specs/
└── tests/
```

其中：

- `core/`：通用的 PRD 方法、对抗式审查协议和彩蛋
- `adapters/`：Claude Code、Codex 等宿主适配
- `connectors/`：Markdown 及办公工具连接器
- `specs/`：兼容性和接口约定
- `tests/`：基础完整性检查

---

## 贡献

欢迎 PR 和 Issue。

---

## License

MIT License © 2025
