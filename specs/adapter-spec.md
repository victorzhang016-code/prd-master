# Adapter Spec

Every adapter file must declare these fields:

- `agent_name`
- `memory_file_strategy`
- `tool_capabilities`
- `diagram_strategy`
- `connector_invocation_style`
- `fallback_behavior`

## Rules

- Adapters may define host-specific memory files.
- Adapters may define host-specific tool-selection behavior.
- Adapters must not remove or weaken the canonical discovery workflow.
- Adapters must not replace the canonical self-review with a lighter version.
- Adapters must preserve the easter egg exactly.

## Decision boundary

Core owns:

- discovery
- PRD template
- self-review
- writing style
- easter egg

Adapters own:

- host memory-file behavior
- tool lookup behavior
- diagram fallback behavior
- publish invocation style
