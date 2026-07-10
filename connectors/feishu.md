# Feishu Connector

## Purpose

Publish the approved Markdown artifact into Feishu or Lark documents and optionally notify people or groups.

## Capability layers

- `export_markdown`: yes
- `create_document`: yes, if the workspace exposes Feishu/Lark API, CLI, or script support
- `share_document`: yes, if permissions can be set
- `notify_targets`: yes, if the workspace exposes IM or webhook capability

## Preferred behavior

1. Start from the normalized Markdown artifact.
2. Reuse an existing Feishu/Lark helper in the workspace if one exists.
3. If a rich document API is used, preserve headings, tables, and lists as faithfully as possible.
4. After document creation, share the document if the requested destination requires it.
5. Notify the requested users or groups only after the document URL is stable.

## Guardrails carried over from the original implementation

- Rich document creation can have eventual-consistency delays right after document creation.
- Large tables may need chunking if the target API imposes row or block limits.
- If permission or sharing calls fail after the document is created, return `partial_success` with the document URL.

## Fallback

- If remote creation is not available, return the Markdown artifact plus the exact manual import step.
