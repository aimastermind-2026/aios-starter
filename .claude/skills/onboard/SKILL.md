---
name: onboard
description: Sets up or refreshes the AI OS from the user's documents and the 7 setup questions, then builds the core context files, connections table and operating manual in one pass. Use on day 1, or when someone says "onboard me", "set me up", "let's get started", "fill in my AI OS", or has just copied this starter. Safe to re-run after editing aios-intake.md.
---

# Onboard

Turn what the user already has (documents in `references/source-docs/`) plus seven short answers (`aios-intake.md`) into a working business brain. Ask as little as possible: read first, then ask only about real gaps.

## Before you start

- Read `CLAUDE.md` and `AGENTS.md`. If this is an established project with its own context files and routes, update those rather than creating parallel copies. Keep any rules and routes not related to onboarding.
- If `aios-intake.md` is missing, create it from [the template](assets/aios-intake.md).
- Do not ask for API keys, passwords or tokens. Connecting tools comes later.

## Step 1: Read the source documents

If `references/source-docs/` contains anything besides its README, read every document in it.

For each of the 7 questions in `aios-intake.md` that is still unanswered, fill it in **only** with what the documents clearly support. After each filled answer, note where it came from, for example `(from: business-overview.pdf)`. Never infer, embellish or merge conflicting facts. If two documents disagree, leave the question for the user and mention the conflict.

For question 2 (writing samples), documents that contain real posts, emails or newsletters count as pasted writing. Copy the text exactly, with no edits.

Tell the user in two or three lines what you found and which questions are left.

## Step 2: Ask about the gaps

Check which of the 7 questions still have no real answer (`[Your answer here]` or `[Paste here]` counts as empty).

- **All answered:** skip to step 3.
- **Some answered:** tell the user which ones are covered and ask whether to fill the rest now or build from what's there. Their choice.
- **None answered:** run the interview.

Interview rules:
- Ask one question at a time, in order. Keep each one short, because the user may be answering by voice.
- Write each answer into `aios-intake.md` straight away, before asking the next, so nothing is lost if the session stops.
- **Question 3 (priorities):** if an answer is vague ("grow the business"), ask once for a number, date or deliverable.
- **Question 2 (writing samples) has one firm rule:** samples must be real writing pasted from somewhere else. If the user starts composing new text in the chat, stop them politely and explain: text written in the middle of our conversation already sounds like our conversation, not like them. Ask them to open a recent post or email and paste it unchanged. Do not accept a description of their style instead.
- Never add an eighth question. Anything else can come later through `/grill-me`.

## Step 3: Build the files

When the intake is complete (or the user chose to build from what's there), write everything in one pass, without stopping to confirm each file. If any of these files already exist, first copy them to `archives/onboard-YYYY-MM-DD-HHMM/`.

1. **`context/about-me.md`**: who they are, their role, how they like to work, and the task that eats their week (questions 1 and 7).
2. **`context/about-business.md`**: what they sell, who buys it, and how money comes in (questions 1 and 4).
3. **`context/priorities.md`**: a numbered list, one line per priority, each with its number, date or deliverable (question 3).
4. **`context/voice/samples/`**: each writing sample saved verbatim as its own file, with a one-line header saying where it came from.
5. **`context/voice/voice-rules.md`**: rules drawn from the samples and from any brand voice document: tone, sentence rhythm, words they use, words they avoid, hard rules (for example "no em dashes"). Label rules taken from their documents separately from patterns you observed in the samples.
6. **`system/connections.md`**: fill the Tool(s) column for each area from questions 4 to 7. Leave every row as `not yet connected`. The calendar usually follows the email provider (Gmail means Google Calendar, Outlook means Outlook Calendar); write it in and ask the user to confirm in the close.
7. **`CLAUDE.md` and `AGENTS.md`**: replace the `{{...}}` placeholders with their name, a one-paragraph summary, top priorities, a two-line voice summary and a connections summary. Keep both files identical in shared guidance. In an established manual, only update the onboarding-related sections.

**If the source documents are richer than the 7 questions** (for example detailed offers or ideal client profiles), also create `context/offers.md` and `context/ideal-clients.md`, add them to "Where things live" in both manuals, and keep their content to what the documents actually say.

Do not create any other skills or files.

## Step 4: Close

Print exactly three short lines:

```
Done: your AI OS now knows who you are, what you sell, what matters this quarter and how you write.
Try it now: ask me "what should I focus on this week?"
Next: connect one tool from system/connections.md, and run /audit after your first week.
```

When the user asks "what should I focus on this week?", answer using only the new context files:
- three bullets, written in their voice, each tied to one of their stated priorities
- a final line naming the one thing you'd start with on Monday and why, then offering to do the first step of it with them

If that answer comes out generic, the context is too thin: say which file needs more detail.

## Re-running

Running `/onboard` again is safe. It skips questions already answered unless the user wants to change them, backs up existing files to `archives/` before rewriting, and only rewrites what the changed answers affect. If the context files have since been edited by hand and are richer than the intake, warn the user before overwriting them.
