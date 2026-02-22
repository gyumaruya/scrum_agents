---
name: scrum
description: |
  Scrum framework for AI agent self-management. Brings Scrum practices into
  any project to drive development and continuous improvement.
  Uses GitHub/Bitbucket Issues for backlog, PRs for sprint work.
  Ceremonies chain automatically.
  Triggers: "scrum", "sprint", "retrospective", "backlog", "レトロ", "計画", "振り返り"
metadata:
  short-description: Scrum framework for AI agents
  argument-hint: "[install|uninstall|plan|daily|review|retro|refine|status]"
---

# Scrum Skill

Scrum is the MEANS, not the GOAL. The goal is delivering value to users.

Arguments: $ARGUMENTS

## Argument Routing

| Argument | Action |
|----------|--------|
| `install` | Install this skill globally (symlink to ~/.claude/skills/) |
| `uninstall` | Remove global symlink + optionally clean project Scrum files |
| (empty, first time) | Setup: introduce Scrum to this project |
| (empty, already set up) | Show status + suggest next action |
| `plan` | Sprint Planning → `references/ceremonies/sprint-planning.md` |
| `daily` | Daily Scrum → `references/ceremonies/daily-scrum.md` |
| `review` | Sprint Review → `references/ceremonies/sprint-review.md` |
| `retro` | Retrospective → `references/ceremonies/sprint-retrospective.md` |
| `refine` | Backlog Refinement → `references/ceremonies/backlog-refinement.md` |
| `status` | Show current sprint status |

**Detect first time**: Check if `docs/scrum/` directory exists in project root.

---

## Install / Uninstall

### `/scrum install`

Create a symlink so this skill is available globally:

```bash
# Detect this skill's directory (where this SKILL.md lives)
SKILL_DIR="$(pwd)/skills/scrum"  # or wherever this file is located
ln -s "$SKILL_DIR" ~/.claude/skills/scrum
```

If `~/.claude/skills/scrum` already exists, report it and skip.

### `/scrum uninstall`

```bash
rm ~/.claude/skills/scrum
```

Optionally ask if project-level Scrum files should also be removed:
- `docs/scrum/` directory
- `.claude/agents/scrum-*.md`
- `.claude/rules/scrum-*.md`
- Scrum section in CLAUDE.md

---

## GitHub/Bitbucket Integration

**Scrum artifacts map to platform features:**

| Scrum Artifact | Platform Feature |
|---------------|-----------------|
| Product Backlog | **Issues** (label: `backlog`) |
| Sprint Backlog | **Issues** (label: `sprint:current`, assigned to milestone) |
| Sprint Work | **Pull Requests** (branch per item or per sprint) |
| Sprint Review | **PR review** by stakeholder |
| Feedback | **Issue/PR comments** (async) |
| Definition of Done | `docs/scrum/definition-of-done.md` (in repo) |

### Issue Labels (created at setup)

```
backlog          - Product Backlog item
sprint:current   - Selected for current sprint
priority:high    - High priority
priority:medium  - Medium priority
priority:low     - Low priority
type:feature     - Feature
type:bug         - Bug fix
type:improvement - Process improvement (from retro)
```

### Workflow

```
Stakeholder desire → PO creates Issue (label: backlog)
  → Sprint Planning: select Issues (label: sprint:current)
  → Dev: create branch + PR for sprint work
  → Increment ready → PR ready for review
  → Stakeholder reviews PR (async feedback)
  → Merge PR → Retro → SM creates improvement Issue
```

**Async benefit**: Stakeholder reviews PRs and comments on Issues at their own pace.
Agent continues working on other items while waiting for feedback.

### Fallback (no GitHub/Bitbucket)

If `gh` CLI is not available or no remote configured:
- Use `docs/scrum/backlog.md` as markdown backlog
- Use `docs/scrum/sprints/current.md` for sprint state
- Everything still works, just without async platform integration

---

## Automatic Ceremony Flow

Ceremonies chain automatically. The user does NOT invoke each one.

```
User expresses desire
  → PO: create Issue (or backlog item) automatically
  → Sprint Planning: auto-start if no active sprint
  → Dev: implement via PR
  → Increment ready → Sprint Review (PR review)
  → Stakeholder feedback → Retrospective auto-runs
  → SM improves org → Next sprint
```

The user only needs to:
- Express desires
- Review PRs / give feedback on Issues

---

## File Structure

Local Scrum records (always created, regardless of platform):

```
docs/scrum/
  definition-of-done.md                   # DoD (evolves through retros)
  sprints/
    current.md                            # Current sprint state
    YYYY-MM-DD_sprint-NNN/                # Sprint archive
      plan.md                             # Sprint Goal + items
      log.md                              # Progress log
      review.md                           # Review record
      retrospective.md                    # Retro record
  logs/
    failures.md                           # Failure log
    decisions.md                          # Design decisions
    adaptations.md                        # Real-time adaptations
```

When GitHub is available, `docs/scrum/backlog.md` is optional -- Issues ARE the backlog.

---

## Setup (First-Time `/scrum`)

When `docs/scrum/` does NOT exist:

### Step 1: Detect Environment

- Tech stack (`pyproject.toml`, `package.json`, `Cargo.toml`, etc.)
- Git remote and platform (`gh` CLI available? GitHub? Bitbucket?)
- Existing CLAUDE.md and `docs/`

### Step 2: Create Local Structure

Read reference files from `references/` and write to the project:

**Scrum records** (`docs/scrum/`):
- `definition-of-done.md` ← adapt to detected tech stack
- `sprints/current.md` ← empty sprint template
- `logs/failures.md` ← empty with header
- `logs/decisions.md` ← empty with header
- `logs/adaptations.md` ← empty with header

If no GitHub: also create `backlog.md` from template.

**Agents** (`.claude/agents/`):
- `scrum-product-owner.md`
- `scrum-master.md`
- `scrum-developer.md`

**Rules** (`.claude/rules/`):
- `scrum-principles.md`
- `scrum-values.md`

### Step 3: Setup GitHub Labels (if available)

```bash
gh label create backlog --description "Product Backlog item" --color 0E8A16
gh label create "sprint:current" --description "Current sprint" --color 1D76DB
gh label create "priority:high" --color D93F0B
gh label create "priority:medium" --color FBCA04
gh label create "priority:low" --color 0E8A16
gh label create "type:feature" --color 5319E7
gh label create "type:bug" --color B60205
gh label create "type:improvement" --description "From retrospective" --color C2E0C6
```

### Step 4: Update CLAUDE.md

Append Scrum section with artifact locations and auto-flow rules.

### Step 5: Ask for Product Goal

"Scrum を導入しました。このプロジェクトで何を実現したいですか？"

### Step 6: Auto-flow

PO agent → create backlog (Issues or markdown) → Sprint Planning → Dev starts.

---

## Status (`/scrum status`)

1. If GitHub available:
   - `gh issue list --label backlog` for backlog size
   - `gh issue list --label "sprint:current"` for sprint items
   - `gh pr list` for active PRs
2. Read `docs/scrum/sprints/current.md`
3. Count sprint archives
4. Display in Japanese

---

## Sprint Archival

After retrospective:

1. Create `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/`
2. Save: `plan.md`, `log.md`, `review.md`, `retrospective.md`
3. Reset `docs/scrum/sprints/current.md`
4. If GitHub: close sprint Issues, remove `sprint:current` labels
5. Commit the archive

---

## Logging

All events logged with timestamps in `docs/scrum/logs/`:

| Log | Content | Format |
|-----|---------|--------|
| `failures.md` | Things that went wrong | `## YYYY-MM-DD HH:MM - {title}` |
| `decisions.md` | Design/tech decisions | `## YYYY-MM-DD - {decision}` with Context/Decision/Rationale |
| `adaptations.md` | Mid-sprint adaptations | `## YYYY-MM-DD HH:MM - {change}` with Trigger/Change |
