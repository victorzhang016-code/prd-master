# Regression Cases

Use these cases to sanity-check the canonical package after edits.

## Rich-context cases

1. Bonnie real-time recommendation PRD
   - Expect reuse of existing context and a demand judgment card
   - Expect a feature/workflow PRD with competitor and alternative research, rules, exception handling, acceptance criteria, two-layer instrumentation, and an experiment module for the A/B design
2. Privacy-mode PRD
   - Expect ambiguous definitions, data boundaries, and high-risk assumptions to be surfaced rather than silently guessed
3. Launch spec with known metrics
   - Expect a launch/operations document with release gates, monitoring, response owner, measurable expand/hold criteria, functional completion metrics, and product/value metrics

## Sparse-context cases

4. "我想做一个创作者成长功能"
   - Expect an exploration Brief with evidence gaps and a validation plan, not an immediate feature PRD
5. "帮我整理成 PRD"
   - Expect a demand judgment card and questions chosen for maximum information gain before a document type is selected

## Constraint-heavy case

6. "一周内上线，后端只给一个接口窗口"
   - Expect scope cuts, explicit tradeoffs, the smallest viable delivery document, and execution-aware acceptance criteria

## Route-specific cases

7. "做一个 AI 简历助手，自动给候选人改简历"
   - Expect a feature/workflow document plus the AI product module
   - Must state user-visible capability limits, source data/context, permission boundary, human fallback, offline evaluation criteria, online quality monitoring, latency/cost, and privacy risks
   - Must recommend a narrower AI-assisted workflow or exploration Brief if autonomous quality cannot yet be evaluated
8. "把新付费页做成 A/B 实验，看看能否提升转化"
   - Expect an experiment plan, not a generic feature PRD
   - Must contain a falsifiable hypothesis, target population/allocation, control and variable, primary metric, guardrails, observation window, and stop/decision rule
9. "给合作伙伴开放订单查询 API"
   - Expect a platform/API capability contract, not a user-flow-only PRD
   - Must cover callers, input/output examples, authentication/permissions, failure and retry semantics, compatibility/versioning, rate limits where relevant, and observability
10. "将旧版会员等级迁移到新权益体系"
   - Expect a migration/governance plan
   - Must cover affected audiences and systems, before/after behavior, compatibility, data/state migration, rollout cohorts, rollback conditions, communication, operations ownership, and post-change verification

11. Adversarial review handoff for a platform/workflow PRD
   - Expect a plain-language initial solution pass with the problem, core action, expected effect, next decision, user path, and UI/UX handoff
   - Then expect a context-isolated reviewer to inspect product decisions, loopholes, feasibility, safety, evidence, and metrics
   - The reviewer must receive only the normalized draft, evidence appendix, assumptions/open questions, and selected route
   - Expect finding severity, location, evidence, consequence, recommendation, and a disposition record in the final self-review

12. Evidence-heavy cross-system installation PRD
   - Give the agent concrete facts about an incomplete package, a broken authorization path, a platform-specific CLI failure, and a mismatch between write directory and host discovery directory
   - Expect the facts to land in the relevant body sections rather than only in a background summary
   - Expect a traceability pass covering package manifest/fixture, authorization fallback, host/system support gates, adapter evidence, staged success states, and acceptance scenarios
   - Expect “downloaded/written” to remain distinct from “host discovered/usable”, with an explicit unsupported or limited-export path

## Cross-route invariants

- Every non-easter-egg request starts with a short demand judgment card that states the recommended document form and critical evidence gaps.
- Every output uses the mandatory eight-part product-decision framework: 决策摘要、用户/场景/证据、竞品与替代方案研究、目标/范围/约束、类型化核心方案、推进与验证、风险/依赖/开放决策、埋点与指标。
- Sections 1–4, 7 and 8 are always populated; sections 5 and 6 are always present but take their title and content from the selected route. Only optional submodules may be omitted, and they must not appear as empty headings.
- Section 3 compares direct competitors, substitutes, and the current manual workaround using source-backed evidence; every major conclusion maps to a product decision.
- Section 8 is the final decision section and separates functional completion from product/user value. Each metric states its event source, denominator, observation window, privacy boundary, and the decision it can change.
- Every PRD includes a boundary-condition block covering eligibility, exclusions, input/state edges, failure recovery, compatibility/capacity limits, and trust/privacy boundaries. `N/A` requires a reason.
- Unknown facts are marked as assumptions, open questions, or validation work; they are never invented to complete a template.
- The initial solution pass states the problem, core action, expected effect, and next decision in plain language before implementation detail.
- Every material source fact or explicit requirement has a traceable landing point in a decision, contract/state, acceptance fixture, metric, or named validation task.
- Every terminal success state has observable proof, user-visible wording, and a partial-success/false-success branch where relevant.
- Cross-system support claims are tied to host/system/version evidence and real regression, not only a declared compatibility list.
- A context-isolated adversarial review runs after the initial draft; an in-conversation critique does not count.
- The review run has a manifest with a draft hash, reviewer identity/version, status, and verifiable isolation attestation.
- A missing isolation attestation, timeout, crash, or unavailable reviewer yields an explicit unavailable/failed state and cannot be labeled passed.
- Review inputs are treated as untrusted data and are limited to a redacted, read-only per-run snapshot.
- Blocker and High findings are resolved, narrowed, or explicitly escalated before publish or schedule review.
- The final self-review records review inputs, finding counts, dispositions, remaining risks, and the proceed/hold decision.
- A red route-specific gate recommends an earlier-stage or narrower document rather than a cosmetically complete PRD.

## Easter-egg checks

- Input `彩蛋`
- Input `秘笈`
- Input `secret`
- Input `easter egg`

Expected result: the exact contents of `core/easter-egg.md`, with no additional explanation.

## Frozen-behavior checks

- The exact contents of `core/easter-egg.md` remain unchanged.
- `Writing style`, Markdown-first export, adapters, and all connector behavior remain unchanged by this framework refactor.
- The adversarial review receives no inherited conversation context and does not rewrite the PRD.
