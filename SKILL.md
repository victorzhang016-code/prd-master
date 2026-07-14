---
name: prd-master
description: Canonical PRD writing skill for writing or refining PRDs, feature specs, requirement docs, launch specs, and implementation-facing product documents; also triggers on "帮我写个PRD", "产品需求文档", "写个需求", "起草方案", "整理成PRD", "write a PRD", "feature spec", "product requirements", "秘笈", "彩蛋", "secret", and "easter egg".
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

Required drafting workflow:

1. Start from first principles: record the observed event, user job, broken contract, mechanism/owner hypothesis, and observable solved state. Then diagnose and route the request, research direct competitors, substitutes, and the current workaround, and write the demand judgment card around that core problem.
2. Draft the document in plain language. Put the problem, core action, expected effect, and next decision near the front. For user-facing work, include the user path, key screens/states, visible copy, and UI/UX handoff.
   - Include the mandatory boundary-condition block: eligibility, exclusions, input/state edges, failure recovery, compatibility/capacity limits, and trust/privacy boundaries.
3. After the initial draft is complete, invoke a context-isolated adversarial reviewer. Pass only the normalized draft, evidence appendix, assumptions/open questions, and selected route. The reviewer must examine product decisions, loopholes and failure paths, feasibility, evidence quality, and metric validity. Require an isolation attestation; a text claim of independence does not count.
   - Before invoking it, read `core/adversarial-review.md` and use its input, finding, approval, privacy, and failure contracts.
4. Reconcile every Blocker and High finding, record all findings and dispositions in the self-review, and downgrade or narrow the document when the core problem or promise remains unvalidated. If review is unavailable, apply the approval gate in `core/adversarial-review.md`; never label an unavailable review as passed.
5. Export normalized Markdown before using any connector.

The adversarial review is a required workflow stage. A review performed inside the author's existing conversation does not count as context-isolated review.

Package rules:

- `core/` is platform-neutral and must not hardcode a host, path, or vendor.
- `adapters/` are the only place that may define host-specific memory-file or tool behavior.
- `connectors/` are the only place that may define document-export and notification behavior.
- `tests/validate-canonical.ps1` is the lightweight regression check for package integrity.
