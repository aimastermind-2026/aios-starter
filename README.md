# AI OS Starter

A starter project that turns Claude Code (or Codex) into your own AI operating system: a business brain that knows who you are, what you sell, what matters right now and how you sound, with skills on top that grow with you.

Everything lives in plain files you own. Open the folder in Obsidian and the same files become a readable, linked map of your business.

Created by Jomana Al Ahmad, AI Mastersmind.

---

## Set it up (about 15 minutes)

1. **Make your own copy.** On this page, click **Use this template** → **Create a new repository**. Name it, choose **Private**, and create it.
2. **Open it on your computer.** In VS Code, choose **Clone Git Repository**, sign in to GitHub, and pick your new repository. Save it somewhere easy to find, like your Documents folder.
3. **Open the same folder** in the Code tab of the Claude desktop app, and in Obsidian (**Open folder as vault**).
4. **Add your material.** Drop your existing business documents and writing samples into `references/source-docs/`.
5. **Run `/onboard`.** Claude reads what you added, asks only about what's missing, and builds your business brain.

To back up your work at any time, just ask: *"save my work to GitHub"*.

---

## Your skills

| Skill | Use it when |
|---|---|
| `/onboard` | Day 1, and any time you edit `aios-intake.md` and want your context rebuilt |
| `/grill-me` | You want to get something out of your head: a plan, an idea, or missing business context. One question at a time, saved as you go |
| `/link` | You've added a file, folder or project and want your AI to know where it is and when to use it |
| `/audit` | You want to know how well your system actually works. Scores it out of 100 and tells you the most useful thing to fix next |
| `/level-up` | Weekly. Finds one piece of repetitive work, questions it, and helps you build one improvement |

**A good rhythm:** use it daily for real work, run `/audit` after the first week, then `/level-up` once a week.

---

## What's where

```
CLAUDE.md / AGENTS.md     Your AI's operating manual (Claude Code / Codex). Keep them in step
aios-intake.md            The 7 setup questions. Edit and re-run /onboard any time
context/                  Who you are, your business, priorities, voice
references/               Supporting material; source-docs/ is where your raw documents go
system/connections.md     Every tool your AI can reach, and how
decisions/log.md          What you decided and why
archives/                 Old material. Move things here instead of deleting them
brainstorms/              Saved /grill-me interviews (private, not backed up to GitHub)
audits/                   Saved /audit reports (private, not backed up to GitHub)
.claude/skills/           Your skills (Claude Code)
.agents/skills/           Matching copies for Codex. Refresh with scripts/sync-codex-skills.sh
```

## Privacy

- Keys and passwords go in a `.env` file, which is never uploaded to GitHub. Never paste them into context files.
- Keep client names and private client material out unless you've decided how to anonymise it.

---

© 2026 Jomana Al Ahmad, AI Mastersmind. You're welcome to use and adapt this for your own business. Please don't resell or redistribute it.
