# Compatibility Matrix

## Host adapters

| Host | Adapter | Discovery | Self-review | Easter egg | Durable context | Publish automation |
|------|---------|-----------|-------------|------------|-----------------|-------------------|
| Claude Code | `adapters/claude.md` | Full | Full | Full | `CLAUDE.md` or product-context file | Depends on local tools |
| Codex | `adapters/codex.md` | Full | Full | Full | `AGENTS.md` or product-context file | Depends on local tools |
| Generic skill platform | `adapters/generic-platform.md` | Full | Full | Full | Conversation-only unless storage exists | Markdown-first, automation optional |

## Connectors

| Connector | Export Markdown | Create document | Share document | Notify targets | Default fallback |
|-----------|-----------------|-----------------|----------------|----------------|------------------|
| Markdown | Yes | No | No | No | Final artifact |
| Feishu | Yes | Yes, if tooling exists | Yes, if permissions exist | Yes, if IM/webhook exists | Markdown + manual import |
| WeCom | Yes | Yes, if tooling exists | Yes, if doc tooling exists | Yes, if messaging exists | Markdown + partial publish |
| DingTalk | Yes | Yes, if tooling exists | Yes, if doc tooling exists | Yes, if messaging exists | Markdown + partial publish |
| Notion | Yes | Yes, if tooling exists | Yes | Limited | Markdown + import note |
| Google Docs | Yes | Yes, if tooling exists | Yes | Limited | Markdown + import note |
