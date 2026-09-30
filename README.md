# Clear Creek Groundwater Dashboard

A static dashboard for the WRIA 10 Clear Creek groundwater monitoring wells: well list, map, water level time series, and a Well Details tab that embeds each well's 360 photo. It needs no server. GitHub Pages serves the files as they are.

## Files

- `index.html` is the whole dashboard. Settings are in the CONFIG block near the top of the script.
- `data/wells_current_status_latest.csv` has one row per well: ID, logger, position, latest reading, elevations.
- `data/wse_daily_timeseries_latest.csv` has one row per well per day: well ID, date, daily mean water level.
- `.nojekyll` tells GitHub Pages to serve the files untouched.
- `preview.bat` runs the dashboard on your computer at http://localhost:8000/ (needs Python).

## Updating the data

1. Run the export for the dashboard in the groundwater launcher.
2. Copy the two `_latest` CSV files into `data/`, replacing the old ones.
3. Commit and push. The "Data through" date in the page header comes from the newest reading.

## Settings (CONFIG in index.html)

- `toursBase` is the address of the 360 tours site. The Well Details tab looks up each well's newest photo there.
- `photoOverrides` lists wells that share another well's photo (Well-20 uses Well-02).
- `sampleData` shows a SAMPLE DATA badge. Set it to `false` when the real CSVs are in place.

## Publishing

In the repo's Settings, open Pages and deploy from the `main` branch, root folder. The site appears at https://alex-spsseg.github.io/<repo name>/.
