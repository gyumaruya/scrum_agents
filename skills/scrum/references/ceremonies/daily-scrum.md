# Daily Scrum

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Progress Report | **Dev** | -- | Status to SM |
| Goal Inspection | **SM** | -- | Adaptation decisions |
| Scope Adjustment | **PO** (if needed) | -- | Updated priorities |

### Participation Rule
The Daily Scrum is for Developers. If the PO or SM are actively working on
Sprint Backlog items, they participate as Developers. Otherwise, they do not
attend (they are not required and should not disrupt the Developer focus).

## Input
- `docs/scrum/sprints/current.md` -- Current sprint state and item statuses
- `docs/scrum/logs/failures.md` -- Problems recorded since last Daily
- `docs/scrum/logs/adaptations.md` -- Adaptations recorded since last Daily
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
- Item statuses (including DoD inspection results for completed items)
- Blockers encountered

### 2. DoD Checkpoint (Dev)

For any items recently marked `done`, verify:
- Was a DoD self-inspection recorded in the sprint log?
- Did all DoD criteria pass?
- If no inspection was recorded, the item is NOT done. Revert to `in_progress` and inspect.

This step prevents items from reaching Sprint Review without proper inspection.

### 3. Problem Log Review (SM)

Check for problems recorded since the last Daily Scrum:
- Read `docs/scrum/logs/failures.md` -- any new entries since last check?
- Read `docs/scrum/logs/adaptations.md` -- any new entries since last check?
- If problems were recorded: verify they are being addressed
- If problems occurred but were NOT recorded: flag the gap (this is the pattern P27 prevents)

### 4. Inspect (SM)

Scrum Master inspects process:
- Is the Sprint Goal still achievable?
- Are any items blocked?
- **Are all "done" items backed by a DoD inspection record?**
- Is the process working well?
- **Were all problems since last Daily properly recorded?**

Record inspection in `docs/scrum/logs/role-interactions.md`.

### 5. Adapt

If problems detected:
- Dev reorders technical work
- PO adjusts scope if needed (reduce scope, keep goal)
- SM logs adaptation in `docs/scrum/logs/adaptations.md`

### 6. Update

Update `docs/scrum/sprints/current.md` log with timestamp.

## Output

Brief status. Continue development.

## Auto-next

If all items done → auto-trigger Sprint Review.
Otherwise → continue development.
