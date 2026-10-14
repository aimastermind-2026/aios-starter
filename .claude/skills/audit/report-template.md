---
audit_kind: ai-system
history_schema: 1
run_id: "<UTC timestamp plus short random suffix>"
started_at: "<ISO-8601 UTC>"
completed_at: "<ISO-8601 UTC>"
project_root: "<absolute project folder, forward slashes>"
project_identity: "<confirmed project identity, no credentials>"
report_status: complete
scoring_version: v1
previous_reports: []
score_baseline: null
scores_comparable: false
scores:
  business_knowledge: null
  connected_tools: null
  workflows: null
  autonomy: null
  raw_total: null
  final: null
---

# AI System Score: <project and date>

## Conclusion and scope

<What works, the most important mismatch, runtimes, workflows, tool areas and retrieval tests checked, counts, anything left out and why, and what couldn't be checked. Mark partial runs clearly.>

## Manual findings (CLAUDE.md / AGENTS.md)

<Which manuals were checked, missing or not checked; how their shared guidance compares; finding IDs with file references; scope; whether any manual was changed.>

## Routes and Claude/Codex compatibility

<Compatibility table and unique findings grouped as confirmed problem, unchecked, intentional difference and improvement idea, with evidence from both sides and discovery versus run coverage.>

## Retrieval tests

<The five questions, routes tried, sources, and found directly / by search / not found.>

## What works

<Up to three strengths, with evidence.>

## Proven reliability

<All 20 criterion IDs with points, four area scores, raw total, caps and why, final score and stage. Keep confirmed problems separate from unchecked evidence. This measures proven reliability, not overall usefulness. Partial or unscored items stay null.>

## Since the last audit

<Links to earlier reports and the score baseline, or "first baseline". Progress changes, real fixes versus evidence-only gains, things that got worse, and changes in scope or scoring. Score arithmetic only when the comparison is valid.>

## Finding list

| ID | Type | What it affects / runtime | First seen | Before | Now | Last confirmed (date / state) | Evidence | Done when |
|---|---|---|---|---|---|---|---|---|

<Current findings plus every carried finding, including not-rechecked items and short entries for closed ones. An empty list is fine when the checked scope supports it.>

## Top fixes and next step

<Up to three ranked fix / check / optional actions with benefit, finding IDs and done checks. A ready-to-use next-step prompt and what's still unchecked.>
