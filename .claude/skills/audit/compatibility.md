# Routes and Claude/Codex compatibility

Run these checks in every audit. Keep them bounded and read-only. Only check the runtimes the user actually uses or plans to move to; a project that only uses one doesn't need duplicate copies to pass. Treat a possible future move as an optional idea unless asked. Never install, sync, rename or run workflows just to audit them.

## 1. Work out what should match

- Read the manuals, folder-level overrides, any notes on keeping things in sync, and the sync script. Identify the source copy, generated copies, deliberately separate versions, and any stated sync rules. Don't assume the newest file or the Claude copy is the source.
- List the real skill folders in the project: `.claude/skills`, `.agents/skills`, and `.codex/skills` if present or referenced. A folder spelled `.agent/skills` is a likely typo or custom path, not automatically a working skill folder; check it against the installed runtime.
- Include relevant user-level skill folders, linked folders, runtime settings and duplicate names where you can see them. Don't trawl unrelated personal files or reveal secrets. If you can't see user-level folders, say so.
- Confirm which locations each installed runtime actually reads, and which wins when names clash, using its own listing or settings (or current official documentation if needed). A folder existing proves neither. Note the runtime version when available.
- State the scope in numbers: manuals read, skill folders listed, skills compared, skills whose discovery was checked, supporting files checked, workflows actually run. A metadata check isn't a run.

## 2. Compare the manuals

1. Compare `CLAUDE.md` and `AGENTS.md`, then any sampled folder-level overrides: purpose, user preferences, which sources are authoritative, routes, output locations, permissions and workflow instructions.
2. Classify each real difference as: shared guidance that agrees, an intentional runtime adaptation, a confirmed conflict or omission, or unresolved. Spacing and line endings aren't conflicts. Only require exact matching where the project says the files must match, and call harmless formatting drift what it is.
3. A missing manual only matters if a runtime the user relies on is left without needed guidance and nothing else provides it. Don't demand a second manual for a one-runtime setup.
4. Show both file and line references, the differing rules, which runtime is affected and what it would do differently. For something missing, cite the source rule and the section you checked in the other file. Never invent a line number for text that isn't there.
5. Check that any bridge between manuals keeps the shared instructions without pretending runtime-specific settings are enforced. Different tool or model names can be fine; losing an approval rule or a source route is not.

## 3. Check routes both ways

- **Route to target:** resolve each real path from the right starting point (project root, the file containing it, a stated working folder, the home folder, or another machine). Check it exists and goes where intended. Tell real paths apart from placeholders, examples, wildcards, URLs and paths on other machines. A path on another machine you can't reach is unchecked, not broken.
- **Important target to route:** compare indexes and manuals with the actual top-level project, knowledge and skill folders. Follow chains of indexes; a project linked from an area index is properly routed even without a line in the main manual. Look for useful active material with no way in, with evidence that it matters. An unclassified folder is something to review, not automatically an orphan.
- Look out for old usernames, moved folders, machine-specific absolute paths, wrong spelling or capitalisation where it matters, stale names or counts, archived material shown as current, and links that work but point to the wrong place.
- Don't flag every unlinked file. Scratch files, generated files, dependencies, archives and deliberately private material can rightly be left out. An old file with still-accurate content isn't stale.

## 4. Compare skills between runtimes

Match skills by their declared name, purpose and aliases, not just folder name. Survey broadly using front matter, then look closely at the skills tied to the sampled workflows and anything suspicious.

1. **Present:** the expected copy exists in each runtime, or there's a deliberate reason it doesn't.
2. **Same behaviour:** the steps, inputs, outputs and limits match. For declared copies, compare after only the documented changes. Don't strip out differences just to make them look equal.
3. **Supporting files:** scripts, templates, examples and other files a skill needs resolve from the target runtime. Extra leftover files in a copy are possible drift too, so compare in both directions. Broken links and files outside the project need specific evidence.
4. **Discoverable:** separate "on disk", "listed by the runtime", "disabled" and "not checked". Spot duplicate names across project and user folders and which one wins, where you can tell. If you can't, call it ambiguous. Appearing in a menu doesn't prove it runs.
5. **Will it run:** look for tool calls the runtime doesn't support, unsupported instructions, wrong working folders, platform-specific commands, missing environment variable names (never their values) and undocumented dependencies. Use existing evidence for real runs; leave paid, posting or other side-effect workflows untested.

## 5. Report it

Finding types:

- **Confirmed problem:** evidence of a missing required route or file, conflicting instruction, broken path, or a required skill that's unavailable.
- **Unchecked:** discovery, remote access, intent or execution wasn't confirmed. Say the smallest check that would settle it.
- **Intentional difference:** a documented, sensible runtime adaptation. No fix needed.
- **Improvement idea:** a useful simplification or addition with no failure shown. Explain the benefit without calling it broken.

A short compatibility table, using real paths and runtime names:

| Item | Claude evidence | Codex evidence | Finding / ID | What it means in practice |
|---|---|---|---|---|
| Shared manual guidance | File/section | File/section or confirmed bridge | Agrees / intentional difference / conflict / not checked | What changes for the user |
| Sampled skill | Source copy status | Codex copy and discovery status | Same / missing / drifted / disabled / not checked | What works or breaks after switching |
| Required file or route | Where it resolves | Where it resolves | Valid / broken / unlinked / not checked | Effect on finding or running things |

Then only the findings that need action, grouped by type:

| ID / type / priority | Evidence and runtime affected | Effect on the user | Proposed change or check | How you'll know it's done |
|---|---|---|---|---|

Put wrong answers, lost instructions, unavailable workflows and unsafe permission differences ahead of cosmetic ones. Use one ID per underlying issue across the manual, route and skill sections. Don't hide a confirmed lower-priority problem just because only three fixes are recommended.

Call a sampled move between runtimes **blocked** only when a confirmed problem stops something required from working; **needs checking** for unresolved evidence or a non-blocking mismatch; **passed the checks made** when the stated checks passed with nothing open. Improvement ideas never block a pass. Always say what wasn't run or covered. No extra score, no migration percentage, no credit for duplicate files, and no automatic fixes.

## Examples

- Manuals share every rule but name tools differently for each runtime: intentional adaptation, not a conflict.
- The project says the manuals must be identical, and only line endings differ: formatting only, not blocking.
- A shared permission rule is in one manual only, with no bridge: confirmed omission. Cite the source and the section checked.
- A one-runtime project with one manual and one skill folder: no penalty for missing copies.
- A same-name skill is available to Codex through a confirmed user-level install: not missing just because the project copy is absent. Check that installed version.
- A Codex copy matches its documented changes but is missing a required template: confirmed problem, even though `SKILL.md` matches.
- Duplicate skills in project and user folders where you can't tell which wins: ambiguous, needs checking, not an assumed overwrite.
- A referenced remote machine is unreachable during the audit: unchecked, not a broken local path.
- A project reachable through an area index: routed. Scratch files with no link in: not a problem.
- A skill is listed and enabled but wasn't run: discovery confirmed, running unchecked.
