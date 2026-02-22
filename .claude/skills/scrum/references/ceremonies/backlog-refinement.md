# Backlog Refinement

## When

- Backlog needs updating between sprints
- New stakeholder desires emerge
- User says "バックログ", "refine", "整理"

## Process

### 1. Review Current Backlog

Read `.claude/scrum/product-backlog.md`.

### 2. Refine

Spawn `scrum-product-owner` agent to:
- Add detail to top items (acceptance criteria, notes)
- Remove stale or completed items
- Re-order by value
- Split large items into smaller ones
- Add new items from stakeholder desires

### 3. Present

Show the stakeholder the updated backlog in Japanese.
Ask if priorities are correct.

### 4. Update

Write updated backlog to `.claude/scrum/product-backlog.md`.

## Output

- Updated backlog summary
- What changed (items added/removed/reordered)
- Top 3 items ready for next sprint

## Next Step

If ready to start a sprint: `/scrum plan`
