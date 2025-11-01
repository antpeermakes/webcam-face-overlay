# Git Setup Script for webcam-face-overlay
# Run this after installing Git for Windows

Write-Host "Setting up Git repository..." -ForegroundColor Green

# Check if git is available
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Git is not installed or not in PATH." -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Then restart PowerShell and run this script again." -ForegroundColor Yellow
    exit 1
}

# Navigate to script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "Current directory: $scriptPath" -ForegroundColor Cyan

# Initialize git if needed
if (-not (Test-Path .git)) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
}

# Add all files
Write-Host "Adding files to staging..." -ForegroundColor Yellow
git add .

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Adding GitHub remote..." -ForegroundColor Yellow
    git remote add origin https://github.com/antpeermakes/webcam-face-overlay.git
} else {
    Write-Host "Remote already configured: $remoteExists" -ForegroundColor Cyan
}

# Commit if there are changes
$status = git status --porcelain
if ($status) {
    Write-Host "Committing changes..." -ForegroundColor Yellow
    git commit -m "Initial commit: Webcam face overlay app"
} else {
    Write-Host "No changes to commit." -ForegroundColor Cyan
}

# Set branch name
Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main

Write-Host "`nSetup complete! Now push to GitHub:" -ForegroundColor Green
Write-Host "  git push -u origin main" -ForegroundColor Cyan
Write-Host "`nIf you encounter authentication issues, use a Personal Access Token:" -ForegroundColor Yellow
Write-Host "  https://github.com/settings/tokens" -ForegroundColor Cyan

