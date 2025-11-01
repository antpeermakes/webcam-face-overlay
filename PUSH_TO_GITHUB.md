# Push to GitHub - Step by Step

## After Git is installed and PowerShell is restarted:

### 1. Open PowerShell in this folder and run:

```powershell
cd "c:\Users\anthony\Desktop\webcam cursor"
```

### 2. Initialize Git (if needed):

```powershell
git init
```

### 3. Add all files:

```powershell
git add .
```

### 4. Make your first commit:

```powershell
git commit -m "Initial commit: Webcam face overlay app"
```

### 5. Add GitHub remote:

```powershell
git remote add origin https://github.com/antpeermakes/webcam-face-overlay.git
```

### 6. Set branch to main:

```powershell
git branch -M main
```

### 7. Push to GitHub (will ask for credentials):

```powershell
git push -u origin main
```

## When asked for credentials:

- **Username**: Your GitHub username (antpeermakes)
- **Password**: Your Personal Access Token (not your GitHub password!)

The token should start with `ghp_` or similar.

## Troubleshooting:

If you get "remote origin already exists":
```powershell
git remote remove origin
git remote add origin https://github.com/antpeermakes/webcam-face-overlay.git
```

If you get "fatal: refusing to merge unrelated histories":
```powershell
git pull origin main --allow-unrelated-histories
# Then push again
git push -u origin main
```

