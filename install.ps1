param(
    [ValidateSet("claude", "codex")]
    [string]$HostApp = "claude",
    [string]$TargetDir
)

$ErrorActionPreference = "Stop"
$repoUrl = "https://github.com/victorzhang016-code/prd-master.git"

if (-not $TargetDir) {
    switch ($HostApp) {
        "claude" { $TargetDir = Join-Path $HOME ".claude\skills\prd-master" }
        "codex"  { $TargetDir = Join-Path $HOME ".agents\skills\prd-master" }
    }
}

$parentDir = Split-Path -Parent $TargetDir
if ($parentDir) {
    New-Item -ItemType Directory -Force -Path $parentDir | Out-Null
}

$gitDir = Join-Path $TargetDir ".git"
if (Test-Path $gitDir) {
    git -C $TargetDir pull --ff-only
}
elseif (Test-Path $TargetDir) {
    throw "Target exists but is not a git repository: $TargetDir"
}
else {
    git clone $repoUrl $TargetDir
}

Write-Host "Installed prd-master to: $TargetDir"
