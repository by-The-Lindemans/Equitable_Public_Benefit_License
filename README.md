# Public Benefit Equity License v1.0 - reference repo

This repo publishes the PBE-L license text and a small compliance kit that keeps overhead low for good-faith nonprofits and co-ops while preventing capture by for-profit and ultra-wealthy actors.

## Files
- LICENSE.txt - the full legal text
- NOTICE - parameters you set for venue and where your transparency lives
- attestation/ - one-page annual attestation templates
- transparency/SCHEMA.csv and DICTIONARY.md - a minimal, machine-readable supplement

## How to issue the license from this repo
1. Fork or clone this repo as `pbe-license` under your org GitHub account.
2. Update `NOTICE` with your Public Location URL and contact email; commit.
3. Tag a release, for example `v1.0.0`, so downstream projects can link to a stable tag.
4. Enable GitHub Pages on the repo with the `main` branch; this makes your LICENSE and NOTICE easy to link.
5. Optionally add `BADGE.md` to show the “PBE-L compliant” link snippet that adopters can copy.

## How projects adopt the license
1. Copy `LICENSE.txt` into the project repo root unchanged.
2. Add a project-local `NOTICE` with:
   - Licensor name
   - The default governing law and venue if you want to override Oregon
   - The Public Location URL for the project’s Transparency Report
3. Add a `COMPLIANCE.md` file that links to the Transparency Report and to your annual attestation file.
4. Compute Org Caps each year:
   - Find the Wealth Caps from your national statistics office or U.S. sources as defined in the license.
   - Compute FTE Headcount as the average of paid hours over the last 90 days divided by 40.
   - Org Net Assets Cap = 2 × FTE Headcount × Net Worth Cap
   - Org Gross Receipts Cap = 2 × FTE Headcount × Income Cap
5. Publish transparency by the Reporting Deadline:
   - If you already publish Form 990 or an equivalent filing, add a short CSV or JSON supplement using `transparency/SCHEMA.csv`.
   - If you are a small org with FTE ≤ 5 and both totals under 25 percent of caps, publish items 1 to 4 only, plus a short Equitable Application statement.
6. Have an officer sign the annual attestation from `attestation/ATT_ORG.md` and keep it on file; post a PDF if you can.
7. Add this badge to your README pointing to your Transparency Report:

