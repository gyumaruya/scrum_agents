# Daily Scrum

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Progress Report | **Dev** | -- | Status to SM |
| Goal Inspection | **SM** | -- | Adaptation decisions |
| Scope Adjustment | **PO** (if needed) | -- | Updated priorities |

## Input
- `docs/scrum/sprints/current.md` -- Current sprint state and item statuses
- Recent changes (VCS log) -- What was done since last check

## When (Auto-trigger)

- Mid-sprint, when checking progress is useful
- When a blocker is detected
- Manual: `/scrum daily`

Note: For AI agents, this is less about "daily" and more about periodic inspection.
Auto-trigger when the Developer agent completes an item or hits a blocker.

## Process

### 1. Read State (Dev)

Developer reports current status:
- Sprint Goal progress
- Item statuses
- Blockers encountered

### 2. Inspect (SM)

Scrum Master inspects process:
- Is the Sprint Goal still achievable?
- Are any items blocked?
- Is the process working well?

Record inspection in `docs/scrum/logs/role-interactions.md`.

### 3. Adapt

If problems detected:
- Dev reorders technical work
- PO adjusts scope if needed (reduce scope, keep goal)
- SM logs adaptation in `docs/scrum/logs/adaptations.md`

### 4. Update

Update `docs/scrum/sprints/current.md` log with timestamp.

## Output

Brief status. Continue development.

## Auto-next

If all items done → auto-trigger Sprint Review.
Otherwise → continue development.
