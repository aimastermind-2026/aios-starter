# Audit history and saving reports

Read this at the start of every audit. The saved reports are the history: each new report carries the finding list forward from the last one. There's no separate score database, and nothing depends on this conversation. Saving a report doesn't schedule future audits or change the system.

## 1. Choose which earlier reports to compare against

1. Find the project's `audits/` folder. Look at file names and front matter first, not every report in full. The folder may hold other kinds of audit (cost, security, code); only `audit_kind: ai-system` reports count here.
2. Choose using the project, run date, report status, scoring version and scope. For older reports without front matter, read their headings, treat them as legacy, and never guess their scores, IDs or dates. Don't rewrite old reports to match a newer format.
3. Read the latest relevant report's finding list, plus the latest complete comparable report if that's a different one. Start with at most two. Only open older reports to settle an unclear finding or find an older comparable scope. Ignore example or test reports. If runs overlapped, check both so neither one's open findings get lost.
4. Only compare **scores** for the same project, scoring version and roughly the same scope (runtimes, tool areas, workflows and retrieval tests). The same project moved to a new folder still counts if you confirm it's the same. Different projects, a changed scoring guide, a narrower or wider sample, or a partial report don't support a simple "up by X". Individual findings can still be compared where the same thing was checked.
5. Record links to the earlier reports and, separately, the score baseline if there is one. No earlier eligible report means **first baseline**. An audit that was never saved doesn't count as evidence. Only import older history if the user asks, and label its source and date.

## 2. Keep findings trackable

Give each new underlying issue a stable ID such as `AIS-<run-id>-01`. Keep the same ID on later runs when it's the same route or workflow, runtime and kind of failure. If something was renamed or moved, record that rather than creating a duplicate. If it's unclear whether two findings are the same, explain before merging them. Type (problem, unchecked, improvement idea, intentional difference), confidence and progress are separate fields.

Carry the previous report's full finding list into the new one, including open items outside today's sample and short entries for items already closed. Keep the original first-seen and last-confirmed dates. Leaving something out of the top three fixes doesn't close it.

| Progress | What it takes |
|---|---|
| New | First time it appears in the history. Say "newly found", not "newly broken", unless earlier evidence shows it was working before |
| Still open | Rechecked and still a problem or still unchecked, or an improvement idea confirmed as still pending |
| Fixed | The original "done" check now passes, with current evidence. A planned edit, a new timestamp, an installed copy or someone saying it's fixed isn't enough |
| Back again | Was fixed and the same failure has happened again. Keep the ID and link to when it was closed |
| Not rechecked | Not covered, not reachable, or not enough evidence today. Keep its last known state; never imply it's fixed or newly broken |
| No longer relevant | Requirements changed, the workflow was retired, or the scope changed, with evidence. Say why; this isn't a fix |

A finding that was fixed but not checked today is "Not rechecked", last known state "Fixed". If an earlier suspected problem turns out to be wrong or intentional, record the correction and evidence; don't call it a fix and don't erase the earlier note.

For each tracked finding record: ID, type, what it affects, first seen, previous progress, current progress, last confirmed date and state, evidence links, and its "done" check.

## 3. Explain progress honestly

Use a short table plus a few sentences:

| Finding ID | Before | This run | Evidence or what changed in practice | Next check |
|---|---|---|---|---|

- Keep these apart: **real fixes**, **newly confirmed evidence**, **things that got worse** and **changes in scope or scoring**. More logs can earn more credit without the system improving, and a newly found problem can lower the score without anything having broken recently.
- Only show a score comparison when it's valid: earlier and current area scores, raw totals, caps and finals, plus which evidence changed. Otherwise say **scores not directly comparable** and why. Never show a misleading trend.
- Give counts of unique findings by progress, and how many were rechecked versus carried forward. Don't claim improvement just because the score rose or the open count fell.
- Rank the next checks by impact on the user, including important open items from before. Never rerun paid workflows, send alerts or make fixes just to earn credit.

## 4. Save every run safely

1. Use [the report template](report-template.md). Generate a real UTC timestamp and a run ID that won't collide (timestamp plus a short random suffix). File name: `audits/audit-YYYY-MM-DD-HHMMSS-<suffix>.md` in UTC. Include timezone-aware timestamps and the exact project folder in the front matter. These are local records, not uploads.
2. Fill every section with real evidence, or an explicit "not checked" or "partial" note. Keep the full scoring, the finding list, links to earlier reports, comparison limits and "done" checks. No leftover placeholders or made-up results.
3. Never overwrite an existing file. If the name is taken, retry with a new suffix. Don't replace an earlier same-day run, and don't edit old reports when a later run fixes something; the new report records that.
4. Read the saved report back. Check the front matter, links to earlier reports (relative to the report's folder), the arithmetic, finding IDs and progress, that nothing private leaked, and that it matches what you told the user. Link the saved file in chat with a short progress summary.
5. If the audit stops early, save what was observed with `report_status: partial`, scores you couldn't give set to `null`, the reasons, and unchecked findings carried forward. A partial report is never a full baseline. If the process is killed it may not save; never claim it did.
6. If the file can't be written, say **report not saved**, give the report in chat and explain why. Don't save it somewhere else quietly or claim the history was updated. If the user asked not to save, say **not saved, as you asked**.

The project stays unchanged apart from the new report (and the `audits/` folder if it didn't exist). Don't log audits in business context or `decisions/log.md`, and don't edit the manuals. Reports are snapshots, never the current source of business facts.

## Sanity checks

- First run: one real report saved; no invented baseline, score change or fixed finding.
- Second run: the first report untouched; IDs carried over; only marked fixed with passing evidence.
- Two runs in the same second, or in parallel: different file names; neither replaces the other.
- Smaller scope: earlier findings outside it show as not rechecked, never fixed.
- Scoring guide or scope changed: finding changes can be shown; no overall score improvement claimed.
- A fixed finding fails again: "Back again", same ID, current evidence.
- Can't write, or asked not to save: no false "saved" message.
- Partial or test reports: never used as a full baseline.
