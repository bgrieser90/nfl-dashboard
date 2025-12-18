#!/bin/bash

# Simple script to update the NFL dashboard on GitHub Pages

# Dashboard is now generated directly into this folder by npm run dash:nfl
# No copying needed - just commit and push the existing dashboard.html

# Add, commit and push in one go
git add dashboard.html insights.html
git commit -m "Update NFL dashboard and insights - $(date '+%Y-%m-%d %H:%M')"
git push origin main

echo "✅ Dashboard updated at https://bgrieser90.github.io/nfl-dashboard/dashboard.html"
echo "✅ Insights updated at https://bgrieser90.github.io/nfl-dashboard/insights.html"
