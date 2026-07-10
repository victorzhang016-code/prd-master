# Connector Contract

All connectors must consume the same normalized source artifact.

## Input

```json
{
  "title": "string",
  "markdown_body": "string",
  "doc_metadata": {
    "version": "string",
    "date": "string",
    "status": "string",
    "assumptions": ["string"],
    "open_questions": ["string"]
  },
  "destination": {
    "platform": "markdown | feishu | wecom | dingtalk | notion | google_docs",
    "space": "string",
    "folder": "string",
    "page": "string"
  },
  "notification_targets": [
    {
      "type": "user | chat | email | webhook",
      "id": "string"
    }
  ]
}
```

## Output

```json
{
  "status": "success | partial_success | failed",
  "document_id": "string",
  "document_url": "string",
  "delivery_notes": ["string"],
  "errors": ["string"]
}
```

## Shared rules

1. Markdown export happens first.
2. `success` means the requested document action completed.
3. `partial_success` means the Markdown artifact is preserved, but one or more downstream actions did not complete.
4. `failed` means no publishable artifact beyond the source Markdown could be produced.
5. If a platform supports document creation but not notifications, return `partial_success`.
6. If the user requests multiple destinations, each destination should produce its own result object.

## Capability layers

- `export_markdown`
- `create_document`
- `share_document`
- `notify_targets`

Each concrete connector must declare which layers it supports and what the fallback is when a layer is missing.
