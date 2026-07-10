# Google Docs Connector

## Purpose

Create a Google Docs document from the approved Markdown artifact and optionally share it.

## Capability layers

- `export_markdown`: yes
- `create_document`: yes, if the host exposes Google Docs or Drive API/tooling
- `share_document`: yes, if the host can set sharing permissions or provide a stable URL
- `notify_targets`: limited; only if the host exposes an additional Google or external messaging channel

## Preferred behavior

1. Use the normalized Markdown artifact as the single source.
2. Publish to Google Docs when tooling is available.
3. Return the document URL and any relevant sharing notes.
4. If sharing succeeds but notification cannot be sent, return `partial_success`.

## Fallback

- If API publishing is unavailable, return Markdown with a Google Docs import note.
