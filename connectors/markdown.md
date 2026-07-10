# Markdown Connector

## Purpose

The Markdown connector is mandatory and always available.

## Capability layers

- `export_markdown`: yes
- `create_document`: no
- `share_document`: no
- `notify_targets`: no

## Behavior

- Produce the normalized Markdown artifact.
- Return `success` if the Markdown artifact is complete.
- Use empty `document_id` and `document_url` when no remote destination exists.
- Add delivery notes that tell the user the Markdown artifact is ready for copy, import, or connector handoff.

## When to use it

- Always use it first
- Use it as the final fallback when no office connector is available
- Use it as the source artifact for all other connectors
