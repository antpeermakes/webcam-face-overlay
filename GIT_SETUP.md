# Git Setup Instructions

## Step 1: Install Git (if not already installed)
Download and install Git for Windows: https://git-scm.com/download/win

After installation, restart your terminal/PowerShell.

## Step 2: Connect Local Project to GitHub

Open PowerShell in this directory and run these commands:

```powershell
# Navigate to project directory
cd "c:\Users\anthony\Desktop\webcam cursor"

# Initialize git repository (if not already initialized)
git init

# Add all files to staging
git add .

# Make your first commit
git commit -m "Initial commit: Webcam face overlay app"

# Add your GitHub repository as remote
git remote add origin https://github.com/antpeermakes/webcam-face-overlay.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Alternative: If repository already has files

If your GitHub repository already has a README or other files:

```powershell
# Pull first, then merge
git pull origin main --allow-unrelated-histories

# Resolve any conflicts if they occur, then:
git add .
git commit -m "Merge local files with GitHub repository"
git push -u origin main
```

## Authentication

When you push, GitHub will ask for authentication. You can use:
- Personal Access Token (recommended)
- GitHub CLI
- SSH keys

Generate a token at: https://github.com/settings/tokens

