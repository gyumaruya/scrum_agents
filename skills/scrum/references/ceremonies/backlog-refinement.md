# Backlog Refinement

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Backlog Review | **PO** | -- | Items identified for refinement |
| Feasibility Input | **Dev** | -- | Technical insights → PO |
| Refinement | **PO** | Dev (feasibility check) | Refined items |
| Process Check | **SM** (optional) | -- | Confirms refinement quality |

## Input
- `docs/scrum/backlog.md` -- Current backlog
- Previous sprint retrospective -- Lessons learned
- Stakeholder feedback -- New desires or changes

## When

- Between sprints
- New stakeholder desires emerge mid-sprint (add to backlog, don't disrupt sprint)
- Manual: `/scrum refine`

## Process

### 1. Review (PO)

Spawn `scrum-product-owner` agent:
- Read `docs/scrum/backlog.md`
- Identify items needing refinement

### 2. Technical Input (Dev)

Spawn `scrum-developer` agent to provide:
- Feasibility assessment for top items
- Technical risks and dependencies
- Effort estimates (rough sizing)

**Handoff:** Dev passes technical insights to PO.
Record in `docs/scrum/logs/role-interactions.md`.

### 3. Refine (PO)

Product Owner agent incorporates Dev input:
- Add detail to top items (acceptance criteria)
- Remove stale items
- Re-order by value
- Split large items
- Add new items from stakeholder desires

### 4. Present

Show updated backlog briefly. Ask if priorities are correct.

### 5. Write

Update `docs/scrum/backlog.md`.

## Output

Updated `docs/scrum/backlog.md` with:
- Refined top items (clear AC, sized, ordered)
- New items from stakeholder feedback
- Stale items removed or deprioritized
- Top 3 items ready for next sprint selection

Brief summary in Japanese of what changed and why.
