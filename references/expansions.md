# Growing your AI OS

Add these when you need them, not before. Each one should solve a problem you've actually hit.

| Add | When | What it is |
|---|---|---|
| `projects/` | You're running more than one bigger piece of work | One folder per project, with a short `README.md`: goal, status, next step, key files |
| Your own skills | You've done the same task with Claude 3 or more times | Do it once together, then say "turn this into a skill". `/level-up` walks you through it |
| Connection guides | You connect a new tool | A short `references/<tool>-api.md`: what it's for, how to authenticate (pointing to `.env`), the few requests you actually use |
| `templates/` | You produce the same kind of document repeatedly | Proposals, reports, briefs to start from |
| Scheduled runs | A skill has worked well by hand several times | Claude Code routines (cloud, laptop closed) or desktop scheduled tasks |
| A knowledge wiki | You read and save a lot of research | Raw sources in, AI-written linked notes out, with an index |
| `CLAUDE.md` in a subfolder | One area needs its own rules | Instructions that only apply inside that folder |

Keep the main `CLAUDE.md` short. Point to files rather than copying their content in.
