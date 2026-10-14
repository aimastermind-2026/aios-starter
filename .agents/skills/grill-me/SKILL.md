---
name: grill-me
description: Interviews the user one question at a time about a plan, idea, decision or their business, saving every answer to a dated file as it goes so nothing is lost. Use when someone says "grill me", wants to stress-test a plan, brainstorm, think something through, get what's in their head into a document, or fill gaps in their AI OS context.
---

# Grill me

Ask the user questions, one at a time, until the topic is properly understood: every branch explored, every dependency settled. The real product is a **saved file** that holds everything they said, organised, so nothing depends on the conversation's memory.

## The rule that matters most: save after every answer

Long interviews overflow the conversation. So the file, not your memory, is the record. After **each** answer, save it before asking anything else. Never wait to be asked to save, and never save several answers at once.

## Before the first question

1. Read `CLAUDE.md` / `AGENTS.md`, then only the context files and earlier interviews relevant to this topic. Don't ask for anything already written down; ask about gaps, changes and decisions. If the user gives you a document, read it and only ask about what's new.
2. Get today's date from the system clock (`date +%F` on Mac or Linux, `Get-Date -Format yyyy-MM-dd` in PowerShell).
3. Create `brainstorms/YYYY-MM-DD-topic-name.md` (create the folder if needed). All interviews live here, whatever the topic.
   - Never overwrite an existing file. If one already exists for the same date and topic, add the time or a short suffix.
   - Only continue an earlier interview if the user asks to or clearly refers to it. Then read it first and carry on its question numbering.
   - No topic yet? Create `YYYY-MM-DD-untitled.md`, ask what to explore, then record the topic and goal in it.
4. Start the file with the header shown below.
5. Tell the user where it's saving in one line, then ask question 1.

## After every answer

1. Add an entry to the file: what you asked, what they said (their own words where the wording matters), anything still unknown and who could answer it.
2. If this answer changes something earlier, update the summary, and mark the earlier entry as replaced with a pointer to the new one. Don't delete it.
3. Read the entry back from the file to confirm it saved.
4. If saving failed, say so plainly and keep the answer visible in the chat. Don't claim it was saved, and don't keep collecting answers until saving works.
5. Only then ask the next question.

## How to ask

- One question at a time, short, easy to answer by voice.
- For decisions, offer a suggested answer based on what you know, clearly labelled as your suggestion.
- For facts about the person or business, ask neutrally. Never fill in a fact yourself or save your guess as their answer.
- Settle earlier decisions before the ones that depend on them.
- If a file, folder or document can answer a question, read it instead of asking.
- If they don't know, note it with who might know, and move on.
- Stop immediately when they say stop. Near the natural end, ask: "Anything we haven't covered?"

Keep these clearly separate in the file: **confirmed** (they said it), **tentative** (an idea they're unsure of), **suggested** (your idea, not confirmed), and **open** (still unknown).

## File layout

```
# {Topic}: interview notes
Date: {date} · Goal: {one line}
Status: in progress / paused / done
Sources read: {context files or documents used}

## Summary so far
(kept up to date as answers come in)

## Questions and answers
### Q1: {short topic}
- Asked: {question}
- Confirmed: {what they said}
- Tentative / suggested: {clearly labelled}
- Open: {unknown item} → {who could answer}

## Still open
- {item} → {who could answer}
```

## When you finish or pause

1. Read the whole file for contradictions and gaps. Flag conflicts rather than choosing an answer for them. Update the status and note where to pick up next time.
2. **If the interview was about building their AI OS context:** copy confirmed facts into the right context file (for example `context/about-business.md`), with a dated link back to this interview. Leave unrelated content untouched. Log confirmed significant decisions in `decisions/log.md`, without duplicating existing entries. Tentative ideas, suggestions and open questions stay in the interview file until confirmed.
3. **If it was about a plan or idea:** the interview file is the output. Suggest `/link` if it should be findable from the manual, or `/level-up` if it points to something worth building. Don't run either automatically.
4. Make sure `CLAUDE.md` / `AGENTS.md` mention `brainstorms/` somewhere. Individual interviews don't each need an entry.
5. Give a short wrap-up: a link to the file, any context files updated, what's still open, and the next step.

## Limits

- Only write to the interview file and, for context-building sessions, the relevant context files and decision log. No messages, posts or changes to outside systems.
- Never ask for or save passwords or keys.
- `brainstorms/` is not uploaded to GitHub by default, so interviews stay on this computer.
