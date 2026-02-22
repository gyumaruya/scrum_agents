# Sprint Planning

## When (Auto-trigger)

- Backlog has items and no sprint is active
- After a retrospective completes (next sprint)
- User expresses a new desire (PO → backlog → auto-plan)
- Manual: `/scrum plan`

## Process

### 1. Why -- Sprint Goal

Spawn `scrum-product-owner` agent:
- Review `docs/scrum/backlog.md`
- Consider stakeholder's desires
- Propose a Sprint Goal (one clear sentence)
- Present to stakeholder for confirmation (or auto-confirm if obvious)

### 2. What -- Select Items

Spawn `scrum-developer` agent:
- Assess feasibility of top backlog items
- Select items that serve the Sprint Goal
- Report what can realistically be completed

### 3. How -- Plan

Developer agent:
- Break items into implementation steps
- Identify risks and unknowns
- Note in `docs/scrum/logs/decisions.md` if significant choices are made

### 4. Write Sprint State

Update `docs/scrum/sprints/current.md`:
- Sprint number (increment from archive count + 1)
- Today's date
- Sprint Goal
- Selected items with status `pending`

### 5. Start Development (AUTO)

**Immediately begin implementation.** Do not stop and wait.
The Developer agent starts the first item right now.

## Output

Brief summary in Japanese, then development begins.

## Auto-next

Development is underway. When increment is ready → auto-trigger Sprint Review.
