---
name: scrum
description: |
  Scrum framework for AI agent self-management. Brings Scrum practices into
  any project to drive development and continuous improvement.
  First call sets up Scrum in the project. Ceremonies chain automatically.
  Triggers: "scrum", "sprint planning", "retrospective", "backlog", "sprint review",
  "振り返り", "スプリント", "バックログ", "レトロ", "計画"
metadata:
  short-description: Scrum framework for AI agents
  argument-hint: "[plan|daily|review|retro|refine|status]"
---

# Scrum Skill

Scrum is the MEANS, not the GOAL. The goal is delivering value to users.

Arguments: $ARGUMENTS

## Argument Routing

Parse `$ARGUMENTS` and route:

| Argument | Action |
|----------|--------|
| (empty, first time) | Run Setup |
| (empty, already set up) | Show Status + suggest next action |
| `plan` | Sprint Planning → `references/ceremonies/sprint-planning.md` |
| `daily` | Daily Scrum → `references/ceremonies/daily-scrum.md` |
| `review` | Sprint Review → `references/ceremonies/sprint-review.md` |
| `retro` | Retrospective → `references/ceremonies/sprint-retrospective.md` |
| `refine` | Backlog Refinement → `references/ceremonies/backlog-refinement.md` |
| `status` | Show current sprint status |

**Detect first time**: Check if `docs/scrum/` directory exists.

---

## Automatic Ceremony Flow

**CRITICAL**: Ceremonies chain automatically. The user does NOT need to invoke each one.

```
User expresses desire
  → PO auto-translates to backlog
  → Sprint Planning auto-starts
  → Dev implements
  → When done: Review auto-runs → Retro auto-runs
  → Next sprint ready
```

### Auto-trigger Rules (injected into CLAUDE.md at setup)

1. **User says what they want** → Automatically spawn PO agent → backlog → plan → dev starts
2. **Dev reports increment done** → Automatically run Sprint Review → present to user
3. **User gives review feedback** → Automatically run Retrospective → commit improvements
4. **Retro completes** → Report readiness for next sprint

The user only needs to:
- Express desires ("Xが欲しい")
- Give feedback during Review ("いいね" / "ここ変えて")

Everything else is automatic.

---

## File Structure

All Scrum artifacts live in `docs/scrum/` -- visible, dated, scalable.

```
docs/scrum/
  backlog.md                              # Product Backlog (living document)
  definition-of-done.md                   # DoD (evolves through retros)
  sprints/
    current.md                            # Current sprint state
    YYYY-MM-DD_sprint-NNN/                # Sprint archive (date + number)
      plan.md                             # Sprint Goal + Backlog
      log.md                              # Daily log
      review.md                           # Sprint Review record
      retrospective.md                    # Retrospective record
  logs/
    failures.md                           # Running failure log
    decisions.md                          # Design decisions log
    adaptations.md                        # Real-time adaptations log
```

**Naming convention**: `YYYY-MM-DD_sprint-NNN/` for temporal context + ordering.

---

## Setup (First-Time `/scrum`)

When `docs/scrum/` does NOT exist:

### Step 1: Detect Project

- Detect tech stack (`pyproject.toml`, `package.json`, `Cargo.toml`, etc.)
- Check for existing CLAUDE.md and `docs/`

### Step 2: Create Structure

Read reference files from this skill's `references/` directory and write to the project:

**Scrum artifacts** (in `docs/scrum/`):
```
docs/scrum/
  backlog.md                 ← from references/templates/backlog.md
  definition-of-done.md      ← from references/templates/definition-of-done.md (adapt to tech stack)
  sprints/
    current.md               ← from references/templates/current-sprint.md
  logs/
    failures.md              ← create empty with header
    decisions.md             ← create empty with header
    adaptations.md           ← create empty with header
```

**Agent definitions** (in `.claude/agents/`):
```
.claude/agents/
  scrum-product-owner.md     ← from references/agents/scrum-product-owner.md
  scrum-master.md            ← from references/agents/scrum-master.md
  scrum-developer.md         ← from references/agents/scrum-developer.md
```

**Rules** (in `.claude/rules/`):
```
.claude/rules/
  scrum-principles.md        ← from references/rules/scrum-principles.md
  scrum-values.md            ← from references/rules/scrum-values.md
```

### Step 3: Update CLAUDE.md

Append to the project's CLAUDE.md:

```markdown

## Scrum

This project practices Scrum. Ceremonies chain automatically.

### Artifacts
- Product Backlog: `docs/scrum/backlog.md`
- Current Sprint: `docs/scrum/sprints/current.md`
- Definition of Done: `docs/scrum/definition-of-done.md`
- Sprint Archive: `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/`
- Logs: `docs/scrum/logs/` (failures, decisions, adaptations)

### Automatic Flow
When the user expresses a desire:
1. PO agent translates it to backlog items
2. Sprint Planning runs automatically (define goal, select items)
3. Dev agent starts implementation immediately
4. When increment is ready, Sprint Review runs automatically
5. After review, Retrospective runs automatically (SM improves org files)

The user only says what they want and gives feedback. Everything else is automatic.

### Manual Commands
`/scrum status` - View current state
`/scrum plan` - Manually trigger planning
`/scrum retro` - Manually trigger retrospective
`/scrum refine` - Manually refine backlog
```

### Step 4: Ask for Product Goal

"Scrum を導入しました。このプロジェクトで何を実現したいですか？"

### Step 5: Auto-flow

Spawn PO agent → create backlog → auto-start Sprint Planning → Dev begins.
The user just answered one question and development is already underway.

---

## Status (`/scrum status`)

1. Read `docs/scrum/sprints/current.md`
2. Read `docs/scrum/backlog.md`
3. Count sprint archives in `docs/scrum/sprints/`
4. Display in Japanese:
   - Current Sprint Goal (or "スプリント未開始")
   - Items: done / in_progress / pending
   - Backlog size
   - Sprint count
   - Recent log entries

---

## Sprint Archival

When a sprint completes (after retrospective):

1. Create `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/` directory
2. Move/copy sprint artifacts into it:
   - `plan.md` - Sprint Goal and selected items
   - `log.md` - Daily progress log
   - `review.md` - Review record
   - `retrospective.md` - Retrospective record
3. Reset `docs/scrum/sprints/current.md` for next sprint
4. Commit the archive

---

## Logging

All significant events get logged with timestamps:

**`docs/scrum/logs/failures.md`**: Things that went wrong
```markdown
## YYYY-MM-DD HH:MM - {title}
{what happened, root cause, resolution}
```

**`docs/scrum/logs/decisions.md`**: Design and technical decisions
```markdown
## YYYY-MM-DD - {decision title}
**Context**: {why this decision was needed}
**Decision**: {what was decided}
**Rationale**: {why}
```

**`docs/scrum/logs/adaptations.md`**: Real-time adaptations during sprints
```markdown
## YYYY-MM-DD HH:MM - {adaptation}
**Trigger**: {what was observed}
**Change**: {what was adapted}
```
