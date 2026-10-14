---
name: level-up
description: A weekly interview that finds one piece of repetitive work, questions whether it should exist, maps it, sets how much AI should do, ties it to a number, and builds one improvement. Also closes a gap found by /audit. Use when someone says "level up", "what should I automate next", "help me improve one workflow", "close this audit gap", or on their weekly review.
---

# Level up

Each run finds **one** opportunity and ships **one** improvement. Over a few weeks, the questions become habit: the user starts spotting repetitive work on their own, mid-week, without being asked.

**What this is not**
- Not `/audit`. The audit checks whether the system is built and working properly; level-up finds the next most useful thing to improve. If the structure is a mess, suggest `/audit` first.
- Not a planner for many ideas at once. One run, one result.
- Not a lecture. The user does the thinking; you run the interview.

**When to run it**
- First run: after the user has lived with the system for a week or two, connected at least one tool, and run `/audit` once. Earlier than that, the results are thin.
- Then weekly, ideally at the end of the week: review the week, pick one thing, build it early next week.
- Any time something repetitive is bugging them.

## What to read first

Read `CLAUDE.md` / `AGENTS.md` and follow their routes. The paths below are this starter's defaults; in a project with different locations, use those, and don't create duplicate files just because a default is missing. Ask only for what isn't already written down.

- `context/priorities.md`: what matters this quarter
- `context/about-me.md`: their role and the task that eats their week
- `system/connections.md`: what tools can be reached, and how
- `decisions/log.md`: what's already been built, tried or ruled out
- the names and descriptions of the existing skills in `.claude/skills/`
- the most recent report in `audits/`, if there is one

## Coming from an audit

If the user brings an `/audit` finding, or a recent report exists, start from that gap: carry its evidence, the affected route or workflow, and its "done" check into step 1 as the first candidate. Only ask for what's missing; don't restart a general interview. Don't chase points, and don't assume an unchecked connection is broken.

- A route-only problem: use `/link` if it's installed and the user wants the change.
- A problem with an existing workflow: fix that workflow rather than building a duplicate. A confirmed fix counts as this run's one result.
- Skip the new-build header (step 6) for fixes; it's only for new workflows, never for manuals or indexes.
- Finish with the evidence that the fix works, and suggest running `/audit` again. Don't promise a higher score; repeated use and due runs have to build up over time.

## The six steps

### 1. Find repetitive work

Ask these one at a time, conversationally:

1. "Think about your last week. What did you do three or more times?"
2. "What felt manual, boring or copy-paste?"
3. "What could someone junior do, if you wrote the steps down for them?"
4. "If your clients doubled next month, what would break first?"
5. "What would bring in the most new clients if it happened without you?"

Then list **one to three candidates**, each with a single line on why it's worth it, and ask the user to pick one.

Useful prompts to offer along the way:
- "How much of this could AI take on, even partly?"
- "We don't need to automate the whole job, just this one part."
- "AI improves fast. If it couldn't do this a few months ago, it might now."

### 2. Question it

Ask: **"What would happen if you just stopped doing this?"**

- If nothing important would break, recommend dropping it. That's a win, not a failure. Log it in `decisions/log.md` and stop here.
- If it's too dependent on judgement, too variable, or needs a human relationship, suggest handing it to a person instead. Log that and stop.
- Otherwise, roughly split it: what's fixed and rule-based, what needs AI judgement, and what must stay with them. Carry on.

### 3. Map it

Get five things clear:

- **What starts it:** an event, a time, a request
- **What information it needs:** and where that information lives
- **The steps:** how the information gets turned into the result
- **The decisions:** where it branches, and on what
- **Where the result goes:** a file, a draft, a message for them to send, a table

If the user can't describe one of these, pause: "If you can't explain it to a person yet, it's too early to explain it to AI. Sketch it on paper and we'll come back to it." Stop the run there.

### 4. Set the AI level

| Level | What AI does | What the user does |
|---|---|---|
| 0. None | Nothing | Everything |
| 1. Suggests | Offers options | Decides every step |
| 2. Drafts | Produces a draft | Reviews and edits before use |
| 3. Runs, with checks | Does the work | Checks results regularly |
| 4. Runs on its own | Handles it end to end | Nothing day to day |

**Start at the lowest level that solves the problem.** Push back on level 4 unless they've already run it successfully at lower levels. If a decision doesn't need AI, keep it as a fixed rule.

### 5. Pick the number

Ask which of these it moves:
- **More clients**
- **More value per client**
- **Less time or cost**

Then name one specific number: hours saved a week, replies per week, time to respond, errors, conversion rate.

**If they can't name what it moves and a number, stop.** Building something that doesn't change a number isn't worth their time.

Write the spec to `decisions/log.md` as a dated entry: the candidate, the answer to step 2, the five-part map, the AI level and the number.

### 6. Build one thing

Ask how they want it built, offering these from simplest to most complex:

1. **Saved prompt:** a prompt they run by hand. Nothing to maintain.
2. **Rule-based skill:** a skill that runs a script, with no AI step. Best when the rules are clear.
3. **AI skill:** a skill with one AI step inside (drafting, sorting, summarising).
4. **Agent:** several steps with reasoning and tools. Only when it genuinely needs both.

**Recommend the simplest option that solves it.** The user has to choose more complexity explicitly.

Then build it: use a skill-creating skill if one is installed, otherwise write the skill or prompt file directly, with front matter, in the right folder. If it's a skill, run `bash scripts/sync-codex-skills.sh <name>` afterwards so Codex gets a copy.

Every new workflow starts with this in its front matter, so it's tested by hand before it's trusted:

```yaml
ai-level: 2            # from step 4
status: testing        # run by hand and check every output; change to "trusted" only after several good real runs
measures: "<the number from step 5>"
```

While building, keep to three habits: build the smallest possible version first (no AI if a rule will do), test each step before connecting the next, and ship a simple version now and improve it from real use.

## What every run produces

1. **One dated entry in `decisions/log.md`** with the spec
2. **One result:** a saved prompt, skill or agent, or a confirmed fix to an existing workflow or route
3. **A short close on one screen:** what was chosen, what was built, and a reminder to run it by hand and check every output before trusting it

## Rules

1. One run, one result. Never scope several candidates in parallel.
2. Step 1 always runs first, even if the user arrives with an idea already. Their idea can be candidate one.
3. Always ask step 2 before building. Dropping a task counts as a successful run.
4. Start at the lowest AI level that works. Push back on level 4.
5. Recommend the simplest build that works.
6. No number, no build.
7. Every new workflow starts with `status: testing`. It only changes when the user edits it after real use.
8. Only edit `decisions/log.md` and the one thing being built or fixed. A chosen audit fix may change its existing workflow or route files. Leave everything else untouched.
