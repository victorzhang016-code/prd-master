$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path | Split-Path -Parent

$requiredFiles = @(
  "SKILL.md",
  "README.md",
  "core/skill-core.md",
  "core/adversarial-review.md",
  "core/easter-egg.md",
  "adapters/claude.md",
  "adapters/codex.md",
  "adapters/generic-platform.md",
  "connectors/connector-contract.md",
  "connectors/markdown.md",
  "connectors/feishu.md",
  "connectors/wecom.md",
  "connectors/dingtalk.md",
  "connectors/notion.md",
  "connectors/google-docs.md",
  "specs/adapter-spec.md",
  "specs/connector-spec.md",
  "specs/compat-matrix.md",
  "specs/project-context-template.md",
  "tests/regression-cases.md"
)

$missing = @()
foreach ($relative in $requiredFiles) {
  $path = Join-Path $root $relative
  if (-not (Test-Path $path)) {
    $missing += $relative
  }
}

if ($missing.Count -gt 0) {
  Write-Error ("Missing required files:`n- " + ($missing -join "`n- "))
}

$corePath = Join-Path $root "core/skill-core.md"
$coreText = Get-Content -Raw -Encoding utf8 $corePath

$forbiddenPatterns = @(
  "CLAUDE\.md",
  "AGENTS\.md",
  "\.claude",
  "\.Codex",
  "lark-cli",
  "Feishu API",
  "在 Claude Code 里说"
)

$hits = @()
foreach ($pattern in $forbiddenPatterns) {
  if ($coreText -match $pattern) {
    $hits += $pattern
  }
}

if ($hits.Count -gt 0) {
  Write-Error ("Forbidden host/vendor coupling found in core:`n- " + ($hits -join "`n- "))
}

$requiredFrameworkPatterns = @(
  "Diagnose and route before drafting",
  "Before choosing a document type or listing features, frame the problem from first principles",
  "Observed event",
  "User job and desired outcome",
  "Broken contract",
  "Mechanism and ownership",
  "Solved state",
  "Every proposed action must trace back to the broken contract",
  "Research the competitive and alternative landscape before drafting",
  "Ask for maximum information gain",
  "Compose the right document, not a fixed template",
  "Shape the initial solution before polishing",
  "State the core action in one sentence",
  "Run an evidence-to-contract coverage pass",
  "traceability ledger",
  "promise-to-proof check",
  "Every material source fact",
  "Cross-system support claims",
  "Run a context-isolated adversarial review",
  "verifiable isolation attestation",
  "unavailable",
  "The reviewer returns findings only; it does not rewrite the PRD.",
  "Reconciles every Blocker and High finding",
  "Universal product-decision framework (mandatory)",
  "Boundary conditions are a base module for every implementation-facing PRD.",
  "Mandatory base module: Boundary conditions",
  "Eligibility and scope",
  "Failure and recovery",
  "Compatibility and capacity",
  "Trust and privacy",
  "stable eight-part framework",
  "Sections 1 through 4 and sections 7 and 8 are always mandatory.",
  "Section 3 must compare real alternatives with evidence",
  "Section 8 must separate functional completion from product and user value.",
  "Module library and routing rules",
  "Use when the problem, segment, or opportunity is not yet validated.",
  "Use when the team needs a direction before a feature plan.",
  "Use when the user value and scope are sufficiently clear",
  "Use when the goal is to learn whether a change causes an outcome.",
  "Use when other systems or developers consume the product capability.",
  "Use when an existing behavior, data model, policy, or user workflow changes.",
  "Use when the central decision is how to operate a released capability.",
  "Use whenever AI is user-visible or materially changes the product outcome.",
  "Route-aware self-review",
  "adversarial review record",
  "Did a context-isolated reviewer inspect the initial draft",
  "Does section 3 compare the relevant direct competitors, substitutes, and manual workaround using evidence",
  "Does section 8 separately define functional completion and product/user-value metrics",
  "mandatory boundary-condition block",
  "observed event, user job, broken contract, and solved state"
)

$missingFrameworkPatterns = @()
foreach ($pattern in $requiredFrameworkPatterns) {
  if ($coreText -notmatch [regex]::Escape($pattern)) {
    $missingFrameworkPatterns += $pattern
  }
}

if ($missingFrameworkPatterns.Count -gt 0) {
  Write-Error ("Contextual framework elements missing from core:`n- " + ($missingFrameworkPatterns -join "`n- "))
}

$reviewPath = Join-Path $root "core/adversarial-review.md"
$reviewText = Get-Content -Raw -Encoding utf8 $reviewPath
$requiredReviewPatterns = @(
  "receives no prior conversation",
  "zero inherited turns",
  "Product decision",
  "Workflow and loopholes",
  "Feasibility",
  "Evidence and measurement",
  "Severity",
  "Recommendation",
  "Blocker and High findings",
  "isolation attestation",
  "review unavailable",
  "per-run read-only input snapshot",
  "Responsibility boundary"
)

$missingReviewPatterns = @()
foreach ($pattern in $requiredReviewPatterns) {
  if ($reviewText -notmatch [regex]::Escape($pattern)) {
    $missingReviewPatterns += $pattern
  }
}

if ($missingReviewPatterns.Count -gt 0) {
  Write-Error ("Adversarial review protocol elements missing:`n- " + ($missingReviewPatterns -join "`n- "))
}

Write-Output "Canonical package validation passed."
