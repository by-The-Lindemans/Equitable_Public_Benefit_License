# Adopter Guide - PBE-L v1.0

1) Copy `LICENSE.txt` into your repository root unchanged.  
2) Create `NOTICE` with:
   - Your Transparency Report URL (a public page that always links the current report and keeps seven years of archives)
   - Your compliance contact email
   - Optional venue override if you will not use Oregon
3) Compute your eligibility caps each year:
   - FTE Headcount = total paid hours over the last 90 days ÷ 40 (round to the nearest tenth)
   - Org Net Assets Cap = 2 x FTE Headcount x Net Worth Cap
   - Org Gross Receipts Cap = 2 x FTE Headcount x Income Cap
   - Wealth Caps: use the sources defined in the license; update when the sources update
4) Publish your Transparency Report by the Reporting Deadline (earlier of 120 days after fiscal year end or your local legal deadline):
   - Put the required tabular items in `transparency/SCHEMA.csv` format; PDF is fine for the rest
   - If you already publish Form 990 or an equivalent filing, add a short CSV or JSON supplement for the missing items (the “existing filings” shortcut)
   - If FTE <= 5 and both totals are under 25 percent of caps, publish items 1 to 4 only; add a short Equitable Application statement (small-org safe harbor)
5) Have an officer sign the annual attestation in `/attestation` and keep it on file; post a PDF if you can.  
6) Add badges to your README. Do not paste ad hoc snippets; copy the canonical lines from **[BADGE.md](./BADGE.md)**. The compliance badge must link to your Transparency Report page.  
7) Keep `NOTICE` and your Transparency Report URL in sync; if the URL changes, update both and republish.  
8) Do not modify `LICENSE.txt`. If you need different terms, contact the licensor for a separate license.  
9) You may keep `NOTICE` private if the Transparency Report URL is already public on your site.

## Where to put things
- `README.md`: place both badges at the top; add a short line under the compliance badge that says it links to your Transparency Report; copy the snippets from **[BADGE.md](./BADGE.md)**.  
- `BADGE.md`: keep the canonical snippets; regenerate with `tools/gen_badges.sh` when your mark changes.  
- `COMPLIANCE.md`: link to your current Transparency Report and to the signed attestation; list the current FTE lookback window dates.  
- Repo settings: protect the `main` branch; enable GitHub Pages if you want stable URLs for `NOTICE` and `BADGE.md`.

## Annual checklist (quick runbook)
- Recompute FTE Headcount and Org Caps.  
- Publish the Transparency Report by the Reporting Deadline; update archives to keep seven years available.  
- Sign and file the attestation.  
- Verify badges: the license badge points to `LICENSE.txt`; the compliance badge opens your Transparency Report.  
- Update `NOTICE` if the report URL or venue changed.

## Practical notes
- Individuals never have to publish anything publicly; they only attest if asked.  
- Using cloud providers, brokers, or custodians is fine; the license blocks performance-fee middlemen, not neutral infrastructure.  
- If you operate a federation under common control, consolidate for caps and transparency; this prevents paper fragmentation without new forms.

## FAQ
- Q: Does the license allow payroll even if some staff would not qualify as individuals?  
  A: Yes. Payroll and benefits for bona fide services are allowed. If the software funds or informs pay, apply benefits with Equitable Application.  
- Q: Can we share research about our approach?  
  A: Yes. Share methods and aggregate stats. Do not publish actionable artifacts or parameter sets that would enable prohibited users to reproduce the tool.  
- Q: What if local law blocks publishing a line item?  
  A: Publish what you can; cite the blocking law for the rest; be ready to verify privately on request.
