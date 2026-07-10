# DingTalk Connector

## Purpose

Publish or hand off PRD output into a DingTalk workflow, ideally using a connected document surface plus optional robot or direct notification.

## Capability layers

- `export_markdown`: yes
- `create_document`: yes, if the host exposes a DingTalk-compatible document API/tool
- `share_document`: yes, if the resulting document can produce a stable link
- `notify_targets`: yes, if the host exposes DingTalk messaging or robot-webhook capability

## Preferred behavior

1. Start from normalized Markdown.
2. Publish into the target document surface when available.
3. If the host supports messaging but not document creation, send the Markdown artifact or upload handoff and return `partial_success`.

## Fallback

- Do not fail the PRD because document automation is thinner than Feishu.
- Preserve the Markdown artifact and return a concrete import or send step.
