# Notion Connector

## Purpose

Create a Notion page from the approved Markdown artifact and optionally share the resulting page URL.

## Capability layers

- `export_markdown`: yes
- `create_document`: yes, if the host exposes Notion API/tooling
- `share_document`: yes, if the page can be shared by URL or workspace permission
- `notify_targets`: limited; only if the host exposes an additional messaging channel

## Preferred behavior

1. Convert the normalized Markdown artifact into a Notion page.
2. Preserve headings, lists, and tables as cleanly as the target tooling allows.
3. Return the created page URL.
4. If the user also asked for notification and the host has no notification channel, return `partial_success`.

## Fallback

- If API publishing is unavailable, return the Markdown artifact with an import-ready note for Notion.
