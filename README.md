# Public Benefit Equity License v1.0 - reference repo

[![License: PBE-L](https://img.shields.io/badge/License-PBE--L-brightgreen?style=for-the-badge&labelColor=222&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IlBCRS1MIG1hcmsiPgogIDwhLS0gT3V0ZXIgcmluZyAtLT4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNiAyYTE0IDE0IDAgMSAwIDAgMjhhMTQgMTQgMCAxIDAgMC0yOFptMCA0YTEwIDEwIDAgMSAxIDAgMjBhMTAgMTAgMCAxIDEgMC0yMFoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgogIDwhLS0gRXF1YWxpdHkgYmFycyAtLT4KICA8cmVjdCB4PSI5IiB5PSIxMyIgd2lkdGg9IjE0IiBoZWlnaHQ9IjIuNCIgcng9IjEuMiIvPgogIDxyZWN0IHg9IjkiIHk9IjE3IiB3aWR0aD0iMTQiIGhlaWdodD0iMi40IiByeD0iMS4yIi8%2BCjwvc3ZnPgo%3D&logoWidth=18)](https://github.com/by-The-Lindemans/Public_Benefit_Equity_License/blob/main/LICENSE.txt)
[![PBE-L compliant](https://img.shields.io/badge/PBE--L-compliant-brightgreen?style=for-the-badge&labelColor=222&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IlBCRS1MIG1hcmsiPgogIDwhLS0gT3V0ZXIgcmluZyAtLT4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNiAyYTE0IDE0IDAgMSAwIDAgMjhhMTQgMTQgMCAxIDAgMC0yOFptMCA0YTEwIDEwIDAgMSAxIDAgMjBhMTAgMTAgMCAxIDEgMC0yMFoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgogIDwhLS0gRXF1YWxpdHkgYmFycyAtLT4KICA8cmVjdCB4PSI5IiB5PSIxMyIgd2lkdGg9IjE0IiBoZWlnaHQ9IjIuNCIgcng9IjEuMiIvPgogIDxyZWN0IHg9IjkiIHk9IjE3IiB3aWR0aD0iMTQiIGhlaWdodD0iMi40IiByeD0iMS4yIi8%2BCjwvc3ZnPgo%3D&logoWidth=18)](https://YOUR-DOMAIN/PUBLIC-TRANSPARENCY-URL)

This repository publishes the canonical text of PBE-L and a small compliance kit for adopters. PBE-L is written to keep overhead low for good-faith nonprofits and co-ops while preventing capture by for-profit and ultra-wealthy actors.

## Files
- LICENSE.txt - the full legal text
- NOTICE - parameters for transparency and cap clauses
- attestation/ - one-page annual attestation templates
- transparency/SCHEMA.csv and DICTIONARY.md - a minimal, machine-readable supplement

## How to adopt the license
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

## Practical notes
- Individuals never have to publish anything publicly. They only attest privately if asked.
- Using cloud providers, brokers, or custodians is fine. The license blocks performance-fee middlemen, not neutral infrastructure.
- If you operate a federation of small orgs under common control, consolidate for caps and transparency. This stops paper fragmentation without new forms.

## FAQ
- Q: Does the license allow bona fide payroll even if some staff would not qualify as individuals?
A: Yes. Payroll and benefits for bona fide services are allowed. The equitable-benefits rule applies if the software funds or informs pay.
- Q: Can we share research about our approach?
A: Yes. Share methods and aggregate stats. Do not publish actionable artifacts or parameter sets that would enable prohibited users to reproduce the tool.
- Q: What if local law blocks publishing a line item?
A: Publish what you can, cite the blocking law for the rest, and be ready to verify privately on request.

## Changes and corrections
- We accept errata; we track them in `CHANGELOG.md`.
- Policy proposals are not in scope for this repo. See `CONTRIBUTING.md` for the process.

## Versioning
- We tag the license and kit with semver. Legal changes bump the major version. Documentation or schema clarifications bump the minor or patch version.

