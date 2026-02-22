# Daily Scrum

## When (Auto-trigger)

- Mid-sprint, when checking progress is useful
- When a blocker is detected
- Manual: `/scrum daily`

Note: For AI agents, this is less about "daily" and more about periodic inspection.
Auto-trigger when the Developer agent completes an item or hits a blocker.

## Process

### 1. Read State

Read `docs/scrum/sprints/current.md`:
- Sprint Goal
- Item statuses
- Blockers

### 2. Inspect

- Is the Sprint Goal still achievable?
- Are any items blocked?
- Should work be reordered?

### 3. Adapt

If problems detected:
- Reorder work
- Drop items to protect Sprint Goal (reduce scope, keep goal)
- Log adaptation in `docs/scrum/logs/adaptations.md`

### 4. Update

Update `docs/scrum/sprints/current.md` log with timestamp.

## Output

Brief status. Continue development.

## Auto-next

If all items done → auto-trigger Sprint Review.
Otherwise → continue development.
