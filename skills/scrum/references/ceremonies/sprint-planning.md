# Sprint Planning

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Sprint Goal | **PO** | Stakeholder | Goal → Dev for feasibility |
| Item Selection | **Dev** | PO (value alignment) | Selected items → SM |
| Plan Creation | **Dev** | -- | Plan written to `current.md` |
| Process Check | **SM** | -- | Confirms process is sound |

## Input
- `docs/scrum/backlog.md` -- Ordered backlog items
- `docs/scrum/sprints/current.md` -- Must show "No active sprint"
- Previous sprint's retrospective (if any) -- Improvements to incorporate

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

**Handoff:** PO passes Sprint Goal to Dev for feasibility assessment.
Record in `docs/scrum/logs/role-interactions.md`.

### 2. What -- Select Items

Spawn `scrum-developer` agent:
- Assess feasibility of top backlog items
- Select items that serve the Sprint Goal
- Report what can realistically be completed

**Cross-role review:** PO verifies selected items align with value priorities.
Record in `docs/scrum/logs/role-interactions.md`.

### 3. How -- Plan

Developer agent:
- Break items into implementation steps
- Identify risks and unknowns
- Note in `docs/scrum/logs/decisions.md` if significant choices are made

**Ownership:** The Sprint Backlog belongs to the Developers. Only they can modify it during the Sprint.

### 4. Process Inspection

Spawn `scrum-master` agent to inspect:
- Is the Sprint Goal clear and achievable?
- Are items properly scoped?
- Does the plan follow Scrum principles?

Record inspection result in `docs/scrum/logs/role-interactions.md`.

### 5. Write Sprint State

Update `docs/scrum/sprints/current.md`:
- Sprint number (increment from archive count + 1)
- Today's date
- Sprint Goal
- Selected items with status `pending`

### 6. Start Development (AUTO)

**Immediately begin implementation.** Do not stop and wait.
The Developer agent starts the first item right now.

## Output

Brief summary in Japanese, then development begins.

## Auto-next

Development is underway. When increment is ready → auto-trigger Sprint Review.
