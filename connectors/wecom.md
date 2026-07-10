# WeCom Connector

## Purpose

Publish or hand off PRD output into a WeCom workflow, ideally with an enterprise document destination and optional chat notification.

## Capability layers

- `export_markdown`: yes
- `create_document`: yes, if the host exposes a WeCom-compatible document or enterprise-doc API/tool
- `share_document`: yes, if the created document can be shared by link or workspace permission
- `notify_targets`: yes, if the host exposes WeCom messaging or webhook capability

## Preferred behavior

1. Generate normalized Markdown first.
2. If the workspace can create a document in the connected enterprise-doc system, publish there.
3. If document creation is unavailable but messaging is available, send a notification with the Markdown artifact or a stored file link and return `partial_success`.

## Fallback

- If only notification is possible, use `partial_success`.
- If neither document creation nor notification is possible, keep the Markdown artifact and return the manual next step.
