# Generic Platform Adapter

## Adapter identity

- `agent_name`: `Generic skill platform`
- `memory_file_strategy`: `none`
- `tool_capabilities`: assume conversation only unless the platform explicitly exposes tools
- `diagram_strategy`: use a neat indented text flow by default
- `connector_invocation_style`: expose only connectors the platform can actually support; otherwise return Markdown plus a handoff note
- `fallback_behavior`: never block PRD output because the platform lacks tools

## Host rules

- Follow `core/skill-core.md` in full.
- Keep context inside the conversation unless the platform exposes durable storage.
- If a reusable product context would help later, include a short `可复用上下文` section at the end of the response so the user can store it manually.
- When publishing tools are not available, treat Markdown export as a successful outcome, not a failure.

## Context-isolated adversarial review

- If the platform exposes a fresh-agent or separate-process capability, pass only the normalized draft, evidence appendix, assumptions/open questions, and selected route to it.
- If it exposes no such capability, create a standalone review-input artifact and clearly mark the review as unavailable rather than presenting an in-conversation critique as independent.
- Apply the finding schema in `core/adversarial-review.md` whenever an independent reviewer is available.

## Skill-platform note

This adapter is the default for weak-tool environments such as upload-only skill platforms. The writing quality should remain the same even when export automation becomes thinner.
