# AI System Score: scoring guide (version 1)

## How to score

Each area has five criteria worth up to 5 points. Only use **0, 1, 3 or 5**: give the highest level that the evidence fully supports.

- **0:** missing, contradicted, or not even meeting the 1-point level.
- Higher levels include everything required by the lower ones.
- When a level has several parts, every part is needed.
- Never score in between, never start at full marks and deduct, never give points for infrastructure that doesn't matter to this user, and never fill missing evidence with optimism.
- A sample can satisfy a "sample" criterion but doesn't prove the whole system. Name the sample and what wasn't covered.
- If no relevant workflows or connections exist, the criteria that depend on them score 0.
- Documentation alone can earn 1 point where stated. It isn't a working result.

## Business knowledge (25)

*Does a fresh session understand this business and find what it needs?*

| ID | Criterion | 1 point | 3 points | 5 points |
|---|---|---|---|---|
| K1 | Knows who and why | Real (not placeholder) identity and purpose are written down | Identity, audience, priorities and working preferences each have a specific, usable source | All of these agree across the current sources, with meaningful priorities and clear "done" expectations |
| K2 | Can find things | The manual gives at least one specific, working route | At least 3 of the 5 retrieval tests succeed through the routes, and important indexes exist where needed | All 5 succeed through the routes, and the folder comparison finds no unexplained important gaps or broken routes |
| K3 | Stays current | Facts that change carry a date or "as of" | Changing facts have refresh rules and current evidence, or are clearly marked historical with a route to the current source | All sampled current facts are confirmed within their expected refresh period; any cache is accurate, maintained and optional, or there is none |
| K4 | One source of truth | At least one authoritative source is named | Rules separate stable context, live status and original records; sampled claims link to their sources | All sampled claims trace to their source; any duplicates have clear roles; no unresolved conflicts between sources or manuals |
| K5 | Pick up where you left off | A real decision or project-status record exists | One active project has a current deliverable, the reasoning behind decisions, and a next step, reachable from its starting point | A second project or knowledge thread can also be resumed from saved records, with current status and source links |

No particular cache, wiki layout, memory folder, manual length or number of projects is required. In a genuine single-project setup, K5's second thread can be a separate earlier decision in the same project.

## Connected tools (25)

*Can it reach the information it needs?*

List the areas that apply before scoring. Mark areas that don't apply, with a reason based on the user's role. Never reward connecting tools the user doesn't need.

| ID | Criterion | 1 point | 3 points | 5 points |
|---|---|---|---|---|
| T1 | Coverage | At least one relevant area has evidence of a successful read, but fewer than half do | At least half (not all) of the relevant areas have evidence of a successful read | Every relevant area has evidence of a successful read within its normal refresh period |
| T2 | Answers real questions | A specific question and its expected answer are written down | One real, priority-related question returns the right record, dates and source | Two different priority-related questions return good results, with completeness or export limits checked |
| T3 | Access can be repeated | One connection has its tool or script and purpose written down | Every relevant area has a written route or is clearly marked "not connected"; connected routes include safe login instructions and example requests | A sampled route is successfully repeated without relying on this conversation, and every connected area has a usable guide |
| T4 | Safe permissions | Needed read/write access and approval rules are written down | Where writing is needed, an earlier approved write or a faithful test result is recorded; or a deliberately read-only setup is written down and confirmed | Sampled actions stay within their intended permissions, with confirmed protection against failures and duplicates (never do a live write just to earn points) |
| T5 | Fresh, and fails loudly | Source dates and how fresh data should be are written down | Sampled reads or exports are within those limits, and failures are reported rather than quietly replaced with old data | Every relevant area has recent success evidence, and at least one connection has shown it handles an expired login or stale data properly |

T1: if exactly one area applies, a successful read of it meets the 5-point coverage level (other criteria are scored separately). Local files and exports count when they are the real source and current enough. No bonus for connectors, keys, number of tools or write access the user doesn't need.

## Workflows (25)

*Do the important workflows reliably produce usable results?*

Choose up to three workflows tied to priorities **before** looking at their outputs. If only one exists, score it honestly. If a stated priority needs a workflow that doesn't exist, keep that gap in the sample.

| ID | Criterion | 1 point | 3 points | 5 points |
|---|---|---|---|---|
| W1 | Right trigger, real use | A workflow has a clear trigger tied to a stated need | One sampled workflow has been run successfully with its intended inputs | Every sampled workflow has been run successfully, with no confusion between overlapping triggers |
| W2 | Usable output | An example output and what "good" looks like are written down | One real output was checked against meaningful criteria | Every sampled workflow has usable outputs checked against their criteria, not just reported as done |
| W3 | Handles problems | Likely missing-input or error cases and side effects are written down | At least one missing-input, stale-source or failure case was tested and handled correctly | Every sampled workflow has a tested problem case and respects its permission and side-effect limits |
| W4 | Works anywhere | Required files, dependencies and how to run it are written down | Sampled entry points, references and registrations resolve; Codex copies match where used | A clean new session (or equivalent) reproduces the workflow without hidden conversation context or undocumented dependencies |
| W5 | Used for real, repeatedly | At least one dated real use | One sampled workflow has two separate real uses, with output links | Every sampled workflow has repeated real uses, and corrections have been built back into the workflow and checked again |

The number of skills and how recently files changed earn nothing on their own. A simple prompt or script can score as highly as a complex agent. Running test examples twice is not repeated real use.

## Autonomy (25)

*Does useful work happen reliably without the user starting it?*

Use real schedules and real due dates. A habit run by hand is useful, but it isn't running without the user. Configuration alone doesn't prove a successful run.

| ID | Criterion | 1 point | 3 points | 5 points |
|---|---|---|---|---|
| A1 | Real trigger | A defined manual habit, or a real schedule or trigger configuration, exists | At least one enabled trigger has a confirmed place it runs and an expected output | That trigger has demonstrably run unattended in its intended environment, including whatever it needs to be available |
| A2 | Runs when due | A dated manual completion, or an incomplete or failed automatic run, is recorded | One due automatic run completed with the expected output | At least two separate due automatic runs completed, and no unexplained missed runs in the period checked |
| A3 | Visible | Run logs and how failures get reported are written down | Checked runs have lasting timestamps and outcomes, and a confirmed way of reporting failures | A real or safely simulated failure reached the intended alert, and recovery is shown |
| A4 | Can stop and recover | How to stop it, who owns it, its permissions and how to recover are written down | Configuration confirms those controls, plus protection against duplicate or overlapping actions | An earlier or safe isolated test shows stopping, recovery and duplicate prevention working without side effects |
| A5 | Kept healthy | How often it's reviewed, and who keeps things fresh and tidy, is defined | One completed review fixed a real issue or confirmed nothing was needed, with evidence | Two separate review cycles are recorded, with follow-up checks of any fixes and up-to-date routes and context |

Never trigger jobs, change schedules, send test alerts or disable anything during an audit. Use earlier evidence, or mark the test unchecked. A setup with only manual habits can score **at most 10/25 for Autonomy**. A newly enabled routine must wait for its due runs; running it twice by hand doesn't count as two due runs.

## Caps and stages

1. Add up each area's five criteria. If the retrieval tests can't find either the user's main purpose or any authoritative priority or status source, **Business knowledge is capped at 10**. Show the raw score and the cap.
2. If no automatic trigger is confirmed working, apply the **Autonomy cap of 10**. This also covers systems with no triggers at all; the cap never adds points.
3. Add the four area scores to get the **raw total**.
4. Apply every total cap that fits. The lowest wins:
   - Any area below 10: total capped at **49**.
   - Any area below 15, or fewer than two confirmed due automatic runs: total capped at **69**.
   - Any area below 20, or an unresolved important conflict in routes or sources: total capped at **84**.
5. **Final score** = the raw total or the lowest applicable cap, whichever is lower. Always show each cap applied and why.

| Final score | Stage |
|---|---|
| 0–24 | Not yet proven |
| 25–49 | Foundations in place |
| 50–69 | Working, with gaps |
| 70–84 | Reliable where checked |
| 85–100 | Reliable and maintained |

Never describe a high score as fully autonomous, safe or complete. Say what was sampled. Missing evidence is something to check, not proof something is broken. The caps exist so that lots of skills can't make up for missing connections or automation.

## Sanity checks

- Fresh copy of this starter, skill names that sound automatic, keys in `.env` and recently edited files: no credit for runs, outputs or tool access. A fresh copy stays "Not yet proven".
- A personalised manual, useful references and dozens of skills, but no observed outputs or runs: can't earn full Workflows or Autonomy.
- 25 for each of the first three areas plus manual-only Autonomy at 10: raw 85, final 69, because there are no confirmed automatic runs.
- All four areas at 21, two confirmed due runs, no important conflicts: raw and final 84. All at 23 under the same conditions: 92.
- A required cache that is stale and contradicts the source lowers K3 and K4 and keeps the score at 84 or below until fixed. No cache, no penalty.
- A monthly routine with two recorded due runs can earn repeat-run credit. A new daily job with no runs yet can't.
