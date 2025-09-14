# Deployment Guide

## GitHub Pages Setup

This dashboard is deployed via GitHub Pages for free, reliable hosting.

### Initial Setup (Already Complete)

1. Repository created at: https://github.com/bgrieser90/nfl-dashboard
2. Dashboard file pushed to main branch
3. GitHub Pages enabled in repository settings

### Configuration

**GitHub Pages Settings:**
- Source: Deploy from branch
- Branch: main
- Folder: / (root)
- URL: https://bgrieser90.github.io/nfl-dashboard/

### Manual Update Process

1. Generate new predictions in simulator:
```bash
cd ~/Documents/Sports\ Stats/Game\ Simulator/football-sim-v3.0
node src/simulators/batchRunner.js --league nfl --week 17
```

2. Update dashboard on GitHub:
```bash
cd /tmp/nfl-dashboard
./update-dashboard.sh
```

### Automated Update Script

The `update-dashboard.sh` script handles:
- Copying latest dashboard.html from simulator project
- Creating timestamped commit
- Pushing to GitHub (triggers Pages deployment)

### Deployment Timeline

- **Push to GitHub:** Immediate
- **GitHub Pages Build:** ~1 minute
- **CDN Propagation:** ~5 minutes
- **Full Global Availability:** ~10 minutes

### Troubleshooting

**Dashboard not updating?**
- Check GitHub Actions tab for build status
- Verify file was pushed: `git log --oneline -1`
- Clear browser cache (Cmd+Shift+R on Mac)

**404 Error?**
- Ensure GitHub Pages is enabled in Settings
- Check correct URL path (/dashboard.html)
- Wait 10 minutes for initial deployment

**Build Failed?**
- GitHub Pages only serves static files
- Ensure no server-side code in dashboard.html
- Check for HTML syntax errors

### Alternative Deployment Options

While GitHub Pages works well, alternatives include:

1. **Netlify** - Drag & drop deployment
2. **Vercel** - Git-based with preview URLs
3. **Surge.sh** - CLI deployment
4. **AWS S3** - Static website hosting
5. **Cloudflare Pages** - Fast global CDN

### Backup Strategy

Local backups maintained at:
- Simulator: `~/Documents/Sports Stats/Game Simulator/football-sim-v3.0/data/dashboard/nfl/`
- Deploy repo: `/tmp/nfl-dashboard/`
- GitHub: Version controlled in repository

---

*For questions about the simulator itself, see the main project repository.*