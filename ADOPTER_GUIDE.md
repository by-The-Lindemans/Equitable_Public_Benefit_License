# Adopter Guide - PBE-L v1.0

1) Copy `LICENSE.txt` into your repository root unchanged.  
2) Create and maintain your Attestation:
   - For Organizations: fill `attestation/ATT_ORG.md`
   - For Individuals: fill `attestation/ATT_INDIVIDUAL.md`
   - Include either the transparency content inline or a link to your public page or existing filings
   - Optional: add a venue override and a compliance contact email
3) Compute your eligibility caps each year:
   - FTE Headcount = total paid hours over the last 90 days ÷ 40 (round to the nearest tenth)
   - Org Net Assets Cap = 2 x FTE Headcount x Net Worth Cap
   - Org Gross Receipts Cap = 2 x FTE Headcount x Income Cap
   - Wealth Caps: use the sources defined in the license; update when the sources update
4) Publish your Transparency Report by the Reporting Deadline (earlier of 120 days after fiscal year end or your local legal deadline) by updating the Attestation with links or inline content. If you use `transparency/SCHEMA.csv`, link to it from the Attestation.
5) Have an officer sign the Attestation each year and commit the update; post a PDF if you can.  
6) Add badges to your README. Do not paste ad hoc snippets; copy the canonical lines from **[BADGE.md](./BADGE.md)**. The compliance badge must link to your Attestation file.  
7) Keep the Attestation current. If the transparency link or venue changes, update it and republish.  
8) Do not modify `LICENSE.txt`. If you need different terms, contact the licensor for a separate license.

## Where to put things
- `README.md`: place both badges at the top; add a short line under the compliance badge that says it links to your Attestation; copy the snippets from **[BADGE.md](./BADGE.md)**.  
- `BADGE.md`: keep the canonical snippets; regenerate with `tools/gen_badges.sh` when your mark changes.  
- `attestation/`: treat this as your single compliance file; it is the Public Location.  
- Repo settings: protect the `main` branch; enable GitHub Pages if you want stable URLs for `BADGE.md` or other docs.

## Annual checklist
- Recompute FTE Headcount and Org Caps.  
- Update the Attestation with links or inline content; publish by the Reporting Deadline; keep seven years accessible.  
- Sign and commit the Attestation.  
- Verify badges: license badge points to `LICENSE.txt`; compliance badge opens your Attestation.
