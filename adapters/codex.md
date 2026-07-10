# Codex Adapter

## Adapter identity

- `agent_name`: `Codex`
- `memory_file_strategy`: `AGENTS.md` if the workspace uses it; otherwise fall back to `docs/product-context/<slug>.md`
- `tool_capabilities`: strong shell access, local file reads, optional MCP/plugin integrations
- `diagram_strategy`: prefer an available diagram tool; otherwise use a clean text flow
- `connector_invocation_style`: prefer local scripts, documented APIs, or workspace helpers already available
- `fallback_behavior`: if a connector cannot complete the last mile, keep Markdown and return `partial_success` with the exact blocker

## Host rules

- This adapter must preserve the full canonical behavior. Do not simplify discovery, self-review, or publish checks.
- If `AGENTS.md` already exists, read it before asking repeat context questions.
- After the PRD is accepted or published, update `AGENTS.md` with reusable context only.
- When a connector is requested, inspect the workspace for existing scripts or credentials first.

## Compatibility note

This adapter exists so Codex uses the same complete skill behavior as the strongest Claude variant, not a reduced branch.
