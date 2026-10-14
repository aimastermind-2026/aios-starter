---
name: audit
description: Scores how well this AI OS actually works, out of 100, across business knowledge, connected tools, workflows and autonomy, using only evidence. Also checks the manuals, broken or missing routes, and Claude/Codex skill compatibility, saves a dated report and compares it with the last one. Use when someone says "audit my AI OS", "how good is my setup", "score my system", "what should I fix next", or asks about migration readiness.
---

# Audit

Check whether this AI OS can find the right information and do useful work reliably, then name the changes that would help the user most.

The result is the **AI System Score**: four areas, 25 points each, scored with [scoring.md](scoring.md).

| Area | The question |
|---|---|
| Business knowledge | Does a fresh session know this business like a teammate would? |
| Connected tools | Can it reach the information it needs? |
| Workflows | Does it reliably do real tasks? |
| Autonomy | Does useful work happen without the user starting it? |

Call the number **proven reliability**. It is not a measure of overall usefulness or of how much of the user's work the system does. A folder, an installed skill, a key in `.env` or a confident claim proves nothing on its own; only evidence of things working counts.

**Ground rules**
- Run locally in this project. Don't use subagents unless the user asks.
- The audit only observes. No fixes, moves, installs, schedule changes, messages or outside writes. `/link` fixes routes; `/level-up` fixes one gap at a time.
- Never nudge a score up or down to encourage another run.
- **Every audit saves a dated report** in `audits/`, following [history.md](history.md). This is part of the audit, not a separate step needing approval, unless the user explicitly says not to save.

## 1. Gather evidence

- Get the current date and the project root. Read `CLAUDE.md`, `AGENTS.md` and any folder-level overrides. Read both manuals when both exist.
- Load the most recent relevant report and its finding list (see [history.md](history.md)) before choosing what to check, so earlier problems get rechecked, not forgotten.
- Follow the manual's own routes first: its indexes, then the folders they point to. Skip caches, dependencies, generated files and `archives/` unless a route leads there.
- From real context (not template placeholders), identify the user's role, main goal, current priorities and up to three important workflows. Don't demand revenue data from someone whose work has no revenue.
- Look at the skills, connection notes and any real schedule configuration and run history.
- Label every finding **verified**, **documented but not checked**, **missing**, **out of date** or **conflicting**, with a file and line, a URL or a dated run as evidence. A file's modified date or a "last checked" label is not proof that something ran.
- If time runs short, mark what you didn't check. Never give full points because there wasn't time to check, and never call a sample a complete audit.

## 2. Test whether information can be found

Build a short map: **what the user needs → manual or index → exact source → how it stays current**. Cover business context, people, priorities and commitments, original records, project deliverables, specialist knowledge, assets and outside systems, where they apply. Naming a generic folder or tool isn't enough if the real source is still unclear.

Compare that map with the actual top-level folders. Look for important unlisted projects, wrong counts, broken paths, confusing names, two "sources of truth" for the same thing, and archived material presented as current. Separate confirmed gaps from folders whose relevance you can't tell. Check that routes work from this folder, including paths inside skills and their Codex copies.

**Run five retrieval tests**, adapted to the user's real work:

1. What does this person or business do, for whom, and what matters right now?
2. Where is the current, authoritative status of a priority or commitment, and how would you confirm it?
3. Where is the latest deliverable and next step for an important active project?
4. Where is a past decision, lesson or piece of specialist knowledge, and its source?
5. Where is a commonly needed outside record, asset or original document, and how do you get to it?

Pick the examples before searching. If one doesn't apply, say why and swap in another real need, so there are always five. For each, record the question, the route tried, the source, the answer, and whether it was found **directly through the routes**, **only by searching**, or **not found**. Finding something by broad search doesn't prove the route works. Mark outside access you didn't actually test as unchecked.

**Freshness and authority**
- A summary or "hot" cache file earns nothing just for existing, and don't recommend one by default. Check whether it repeats canonical facts, has a real way of being refreshed, or shows stale numbers or past deadlines as current. If it adds duplication without upkeep, recommend going to the source directly. Never delete it. Having no cache is fine.
- Stable knowledge can live in notes or a wiki; live numbers and task status should come from the live system or a dated export. Exact terms should come from the original record. Check dates and flag conflicts.
- Ask: could a brand-new session understand this person, pick up an important project and find evidence, without this conversation? Reward short, accurate routing, not long manuals.

## 3. Check tools, workflows and autonomy

First run the [compatibility checks](compatibility.md): broken or stale paths, important unlinked work, differences between the two manuals, and whether skills work in both Claude Code and Codex where both are used.

**Connected tools.** Decide which areas apply: money, clients, calendar, messages, tasks, meetings, documents and knowledge, plus content or specialist areas if important. For each, record whether it's relevant, how it connects, the exact access route, evidence of a successful read and its date, and any limits. One tool can cover several areas only with evidence for each. A configured connector or a key in `.env` doesn't prove a working login. Use small, safe, read-only checks, or dated evidence of a successful run within the source's normal refresh period (30 days if none is documented). Never print keys or bulk private records. Check what an unknown script does before running it.

**Workflows.** Pick up to three workflows linked to the user's priorities, not just the most polished ones. Look at what triggers each, its inputs, where output goes, real examples of usable output, how it's checked, how it handles failure, and whether it's been used more than once. A missing workflow for a stated priority is a gap. Check the skill can be found and its supporting files exist, and that Codex copies match. Agents are optional; more skills or more complexity earns nothing. Don't start paid or substantial work just to test it.

**Autonomy.** Look at real, enabled schedules, triggers and hooks, and any clearly defined habits the user runs by hand, plus their run records. Note where each runs, what starts it, what it should produce, when it last should have run, evidence of success or failure, and how to stop or recover it. A skill called `daily-something`, a template or recently edited files don't prove anything runs. A useful habit run by hand gets limited credit and must be labelled as manual. Don't call a local job "runs without you" without evidence for that environment. Judge monthly or quarterly routines against their actual due dates.

## 4. Score and prioritise

Read all of [scoring.md](scoring.md). Score all 20 criteria, then apply the caps. Show the four area scores, the raw total, any cap and why, the final score and the stage. No evidence means no credit, but keep "not checked" separate from "known broken". List any areas left out, with reasons; disconnected is not a reason to leave an area out.

Rank problems by how much they affect the user's real work: wrong or stale answers and missing access come before tidiness. Give up to three specific fixes, each with the exact route or workflow affected, the evidence, and how you'd know it's done. Don't invent three problems in a healthy system. Separate a **fix** from a **check** that would clear up uncertainty.

Group findings as **confirmed problems**, **unchecked**, **improvement ideas** and, separately, **intentional differences**. Keep severity and confidence separate. Give each underlying issue one stable ID and reuse it everywhere it appears; one broken route isn't several problems. Say which criteria each issue affects. Don't add a fifth score or a migration score. Explain what limited the score (for example, the cap for having no automatic runs).

## 5. Report

Keep the evidence compact. Use this order:

1. **AI System Score: date, project.** Scope, runtimes checked, what wasn't checked, and a plain-language conclusion. Start with what works and the most important mismatch. Give counts of unique findings by type.
2. **Manual findings (CLAUDE.md / AGENTS.md).** Always include this section, even when it's clean (format below).
3. **Routes and Claude/Codex compatibility.** The table and findings from [compatibility.md](compatibility.md). Refer to finding IDs rather than repeating them. Say whether a move between runtimes looks blocked, needs checking, or passed the checks made. Don't imply the whole system is portable from a sample.
4. **Retrieval tests.** The five results, with sources and direct / by search / not found.
5. **What works.** Up to three strengths, with evidence.
6. **Proven reliability.** Four rows out of 25 with every criterion ID and its points, raw total, caps, final score out of 100 and stage. Explain separately how confirmed problems and unchecked evidence limited the score.
7. **Top fixes.** Up to three, each labelled fix, check or optional, with evidence, the exact next action, the practical benefit and what would prove it done.
8. **Since the last audit.** Link the previous report and show what changed, following [history.md](history.md). No earlier comparable report means this is the first baseline, not an improvement.
9. **Next step.** A ready-to-use `/level-up` prompt for the most valuable gap with its evidence and finish check, or `/link <target> <purpose>` for a route-only fix. Only suggest commands that exist; otherwise describe the task in plain words. Suggest `/grill-me` only for genuinely missing context.
10. **Saved report.** Write the full report using [report-template.md](report-template.md), read it back, and link the saved file. The chat summary can be short; the saved report keeps the full scoring, evidence, compatibility checks and finding list. Never say it's saved without confirming.

### Manual findings section

Name the exact manuals checked and any folder-level manuals sampled. Mark each root manual **checked**, **missing** or **not checked** (with a reason). Say whether their shared guidance agrees, conflicts or differs on purpose. Checking one doesn't verify the other, and a single-runtime setup doesn't need a second manual to pass.

Then a short table:

| File and section/line | Rule or missing route | What you found and its effect | Recommended change |
|---|---|---|---|

Keep problems **in the manual** separate from problems **in files it points to**. Include one line on what the manuals already do well. If nothing is wrong, say "No manual issues found in what was checked" and state the limits. End with "No manuals were changed." These findings feed into the existing criteria; don't add a separate score or count them twice.

Suggest running `/audit` again after a fix, weekly while setting up, then at a sensible maintenance interval. Scores can go down when evidence gets old. Never promise a higher score from simply running it again.

If the audit stops early, save a report clearly marked partial and don't present it as complete or invent a score. If saving fails, say so and give the report in the chat.
