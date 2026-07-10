---
name: prd-master
description: >
  Canonical PRD writing skill. Use when the user asks to write or refine a PRD,
  feature spec, requirement doc, launch spec, feature proposal, or to turn rough
  thinking into an implementation-facing product document. Also trigger on:
  "帮我写个PRD", "产品需求文档", "写个需求", "起草方案", "整理成PRD",
  "write a PRD", "feature spec", "product requirements", and the easter-egg
  keywords "秘笈", "彩蛋", "secret", "easter egg".
---

# PRD Master

This package is the canonical source for `prd-master`.

Before taking action on any PRD request, do the following in order:

1. Read `core/skill-core.md`.
2. Read exactly one adapter file:
   - Claude host: `adapters/claude.md`
   - Codex host: `adapters/codex.md`
   - Any other host or skill platform: `adapters/generic-platform.md`
3. If the user wants export, push, sync, send, or publish behavior:
   - Read `connectors/connector-contract.md`
   - Read the requested connector file, or the closest available one
4. If you need maintenance or compatibility details, read:
   - `specs/adapter-spec.md`
   - `specs/connector-spec.md`
   - `specs/compat-matrix.md`

Package rules:

- `core/` is platform-neutral and must not hardcode a host, path, or vendor.
- `adapters/` are the only place that may define host-specific memory-file or tool behavior.
- `connectors/` are the only place that may define document-export and notification behavior.
- `tests/validate-canonical.ps1` is the lightweight regression check for package integrity.
