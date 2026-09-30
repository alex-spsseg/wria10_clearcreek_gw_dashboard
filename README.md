# Clear Creek Groundwater Dashboard

A static dashboard for the WRIA 10 Clear Creek groundwater monitoring wells: well list, map, water level time series, and a Well Details tab that embeds each well's 360 photo. It needs no server. GitHub Pages serves the files as they are.

## Files

- `index.html` is the whole dashboard. Settings are in the CONFIG block near the top of the script.
- `data/wells_current_status_latest.csv` has one row per well: ID, logger, position, latest reading, elevations.
- `data/wse_daily_timeseries_latest.csv` has one row per well per day: well ID, date, daily mean water level.
- `data/channel_rtk.csv` has RTK water surface readings of the open channel beside each well: well_id, date, wse_ft, source. Edit it by hand and push. It is optional.
- `data/nancys_ditch_rtk.csv` has one row per Nancy's Ditch RTK visit: date, wse_ft, source. Edit it by hand and push. It is optional.
- `data/well_locations.csv` has the surveyed decimal degree position for each well and Nancy's Ditch. It overrides the coordinates in the wells file. Edit it by hand and push.
- `.nojekyll` tells GitHub Pages to serve the files untouched.
- `preview.bat` runs the dashboard on your computer at http://localhost:8000/ (needs Python).

## Updating the data

1. Run the export for the dashboard in the groundwater launcher.
2. Copy the two `_latest` CSV files into `data/`, replacing the old ones.
3. Commit and push. The "Data through" date in the page header comes from the newest reading.

## Settings (CONFIG in index.html)

- `toursBase` is the address of the 360 tours site. The Well Details tab looks up each well's newest photo there.
- `photoOverrides` lists wells that share another well's photo (Well-20 uses Well-02).
- `extraBasemaps` and `overlays` add map layers to the layer control. Any tile address works, including an ArcGIS REST cached service (it ends in MapServer/tile/{z}/{y}/{x}).
- `channelCsv` and `channelLabel` control the open channel RTK markers.
- `ditchKey` is the ID of the Nancy's Ditch row in the wells file. `ditchWells` lists the wells in the Nancy's Ditch details table (Well 06 and Well 09). `rtkPresetWells` lists the wells the Surface water RTK preset selects (Wells 06, 09, 10, 12 and 19).
- `locationsCsv` points at the surveyed positions file.
- `ditchCsv`, `ditchLabel` and `ditchColor` control the Nancy's Ditch markers on the chart.
- `sampleData` shows a SAMPLE DATA badge. Set it to `false` when the real CSVs are in place.

## Publishing

In the repo's Settings, open Pages and deploy from the `main` branch, root folder. The site appears at https://alex-spsseg.github.io/<repo name>/.
