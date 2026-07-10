$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path | Split-Path -Parent

$requiredFiles = @(
  "SKILL.md",
  "README.md",
  "core/skill-core.md",
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
$coreText = Get-Content -Raw $corePath

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

Write-Output "Canonical package validation passed."
