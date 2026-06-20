# Nosht — one month of content (TikTok · LinkedIn · Facebook + Stories)

**Window:** 23 Jun → 23 Jul 2026 · **4 posts/day** (Story + LinkedIn + Facebook + TikTok), carousels Tue/Fri.
**Everything is on one editorial system** — the same look as your Instagram feed: DM Sans + Instrument Serif italic accent, ink `#0d1f1c` / cream `#ede9e0`, teal `#3eb8a3`, Nosht wordmark + corner label, and the editorial spec-table (item → small-caps status) for lists. Cards, carousels and story-videos all match.

## Platform routing
- **Facebook** → the **SQ editorial cards** (single image) — your call.
- **LinkedIn** → **text posts** (daily) + **carousels** (Tue/Fri, as a document).
- **TikTok** → **videos / reels**.
- **Instagram + Facebook** → **Stories** — now **animated videos** (not stills).

## What's here
- `CALENDAR.md` — full day-by-day plan.
- `METRICOOL-IMPORT.csv` — 93 feed posts (Facebook cards · LinkedIn text · TikTok videos) ready to bulk-import.
- `media/` — `videos/` (4 reels) · `cards/` (14) · `stories/` (8 story-**videos** .mp4) · `carousels/` (3 PDFs + slide PNGs) · `music/` (12 tracks).
- **Music:** every video (4 reels + 8 story-videos) has its **own original, copyright-free track** — synthesised from scratch (no licensing, no attribution), each a different key/progression/tempo (some warm-ambient, some soft lo-fi pulse), sitting low under the visuals with fade in/out. Standalone copies in `media/music/track01–12.mp3`. *(For TikTok specifically, you can still swap to a trending native sound in-app for reach.)*

## Step 1 — host the media (one-time, required)
Metricool fetches each post's image/video from a public URL. The CSV points at
`https://raw.githubusercontent.com/lordnoori7/nosht-content-month/main/media/...`
so the `media/` folder must live in a **public** repo of that name.
Run `./push-media.sh` (needs the GitHub CLI `gh`, logged in as `lordnoori7`). *(Different username? Tell me and I'll regenerate the CSV — or I can run the push for you.)*

## Step 2 — import to Metricool
1. Planner → **Plan → Import** → upload `METRICOOL-IMPORT.csv`.
2. **Date = YYYY-MM-DD**, **Time = HH:MM:SS (24h)**, brand timezone = **Europe/London**.
3. Review → schedule. (Free plan caps scheduled posts — import in two batches if prompted.)

## Step 3 — Stories & carousels (manual, ~5 min/day)
Kept out of the CSV on purpose, so nothing lands in your **Instagram feed/grid**:
- **Story-videos** (`media/stories/*.mp4`): planner → new post → type **Story** → Instagram + Facebook. One/day (07:30), rotate the 8.
- **Carousels** (`media/carousels/`): Tue/Fri. LinkedIn = upload the **PDF as a document**; Facebook = the slide PNGs as a **multi-image** post.

## Notes
- LinkedIn best practice: no hashtags; nosht.io link in the **first comment**. TikTok captions carry hashtags.
- Instagram feed stays untouched (Stories only) to protect your existing grid.
