# NFL Game Simulator Dashboard

Live NFL game predictions and simulation results updated weekly.

## 🏈 Live Dashboard

**View the dashboard:** [https://bgrieser90.github.io/nfl-dashboard/dashboard.html](https://bgrieser90.github.io/nfl-dashboard/dashboard.html)

## 📊 Features

- **Weekly NFL Game Predictions** - Monte Carlo simulations for all games
- **Win Probabilities** - Percentage chance for each team to win
- **Score Predictions** - Expected final scores with confidence intervals
- **Interactive Visualizations** - Clean, responsive dashboard interface
- **Auto-Updated** - Fresh predictions for each week of the season

## 🔄 Update Process

The dashboard is automatically generated from the [NFL Game Simulator](https://github.com/bgrieser90/nfl-game-simulator) project.

To update with latest predictions:

```bash
cd /tmp/nfl-dashboard
./update-dashboard.sh
```

This script:
1. Copies the latest dashboard from the simulator project
2. Commits changes with timestamp
3. Pushes to GitHub (auto-deploys via GitHub Pages)

## 📈 Data Source

Predictions are generated using:
- Team offensive/defensive statistics
- Historical performance data
- Monte Carlo simulation (2000+ iterations per game)
- Dynamic weighting system for early season games

## 🛠️ Technical Details

- **Frontend:** Pure HTML/JavaScript (no build required)
- **Hosting:** GitHub Pages
- **Updates:** Git-based deployment
- **Visualization:** Custom JavaScript charts

## 📅 Update Schedule

Dashboard typically updated:
- Thursday evenings (TNF)
- Sunday mornings (main slate)
- As games complete for live accuracy tracking

## 📝 License

Part of the NFL Game Simulator project.

---

*Last updated: January 2025*