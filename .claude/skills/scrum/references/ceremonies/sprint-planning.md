# Sprint Planning

## When

- Starting work on a new goal
- After a retrospective completes
- User says "計画", "plan", "次のスプリント"

## Pre-check

Read `.claude/scrum/product-backlog.md`. If empty, ask the stakeholder what they want first,
then spawn `scrum-product-owner` agent to create backlog items before proceeding.

## Process

### 1. Why -- Define Sprint Goal

Spawn `scrum-product-owner` agent:
- Review the Product Backlog
- Consider stakeholder's most recent desires
- Propose a Sprint Goal (one clear sentence)
- Present to stakeholder for confirmation

### 2. What -- Select Backlog Items

Spawn `scrum-developer` agent:
- Review top backlog items that serve the Sprint Goal
- Assess feasibility
- Select items that can realistically be completed
- Report back what can be done

### 3. How -- Plan the Work

The Developer agent:
- Breaks selected items into implementation steps
- Identifies risks and unknowns
- Notes dependencies

### 4. Write Sprint Backlog

Create/update `.claude/scrum/current-sprint.md` with:
- Sprint number (increment from sprint-history count)
- Sprint Goal
- Selected items with status `pending`

### 5. Start Development

**CRITICAL**: After planning, immediately begin development.
The Developer agent starts implementing the first Sprint Backlog item.
Do not stop and wait -- planning flows into execution.

## Output

Tell the stakeholder in Japanese:
- What the Sprint Goal is
- What items were selected
- Development is starting now

## Next Step

Development is underway. Use `/scrum daily` for progress checks.
When the increment is ready, use `/scrum review`.
