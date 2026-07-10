# Connector Spec

Connectors translate normalized Markdown into office-tool outcomes.

## Required properties per connector

- Supported capability layers
- Publish flow
- Fallback behavior
- Result mapping to `success`, `partial_success`, or `failed`

## Status semantics

- `success`: requested downstream action completed
- `partial_success`: Markdown is preserved, but at least one requested downstream action did not complete
- `failed`: no downstream publish result beyond Markdown was possible

## Implementation rules

- Markdown is always generated first.
- Connector files may contain platform-specific advice, but must not change the core PRD-writing rules.
- When a platform cannot support notification, the connector must still preserve the document artifact.
- If the workspace already has a script or helper for a platform, prefer reusing it over inventing a new workflow.
