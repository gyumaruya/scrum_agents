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

**Refinement is NOT a formal Scrum event.** It is an ongoing activity that happens
throughout the Sprint as needed. The PO and Developers collaborate on understanding
and decomposing Product Backlog items.

Typical triggers:
- Between sprints
- New stakeholder desires emerge mid-sprint (add to backlog, don't disrupt sprint)
- Top backlog items lack sufficient detail for next Sprint Planning
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

### 3b. Independence Check (PO)

For each item, verify independence using the INVEST checklist:
- Can this item be delivered and inspected separately from every other item?
- Are there items that were combined from multiple concerns? Split them.
- If items have dependencies, record them in a Dependency Map but keep items separate.

See PO agent definition for the full Independence Checklist.

### 4. Present

Show updated backlog briefly. State the new priority order.
This is **non-blocking** -- do not wait for approval before writing.

### 5. Write

Update `docs/scrum/backlog.md`.

## Output

Updated `docs/scrum/backlog.md` with:
- Refined top items (clear AC, sized, ordered)
- New items from stakeholder feedback
- Stale items removed or deprioritized
- Top 3 items ready for next sprint selection

Brief summary in Japanese of what changed and why.

## Auto-next

Refinement is an ongoing activity, not a gate. After refinement completes:
- **If no active sprint and backlog has items** → Start Sprint Planning immediately.
- **If sprint is active** → Continue development. Refinement does not interrupt the sprint.
- **Never stop after refinement to ask "what next?"** -- the backlog state determines the next action.
