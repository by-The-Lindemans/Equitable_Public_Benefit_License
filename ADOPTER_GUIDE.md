# Adopter Guide - PBE-L v1.0

1) Copy `LICENSE.txt` unchanged into your repository root.  
2) Create `NOTICE` with:
   - Your Transparency Report URL (the public page that always links the current report and keeps seven years of archives)
   - Your compliance contact email
   - Optional venue override if you will not use Oregon
3) Publish transparency by the Reporting Deadline using `transparency/SCHEMA.csv` for the tabular items; PDF is fine for the rest.  
4) Have an officer sign the annual attestation in `/attestation`.  
5) Add badges to your README. Do not paste ad hoc snippets; copy the canonical badge lines from **[BADGE.md](./BADGE.md)**.  
6) Keep `NOTICE` and your Transparency Report URL in sync. If the URL changes, update both and republish.  
7) Do not modify `LICENSE.txt`. If you need different terms, contact the licensor for a separate license.  
8) Your project may keep `NOTICE` private if the Transparency Report URL is already public on your site.

## Where to put things
- `README.md`: place both badges at the top; add a short line under the compliance badge that says it links to your Transparency Report. Use the snippets in **[BADGE.md](./BADGE.md)**.  
- `BADGE.md`: keep the canonical snippets. Regenerate them with `tools/gen_badges.sh` when your mark changes.  
- `COMPLIANCE.md`: link to your current Transparency Report and to the signed attestation; list your current FTE lookback window dates.  
- Repo settings: protect the main branch; enable GitHub Pages if you want stable URLs for `NOTICE` and `BADGE.md`.
