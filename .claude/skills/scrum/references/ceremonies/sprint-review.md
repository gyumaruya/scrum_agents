# Sprint Review

## When

- A meaningful increment is ready to show
- Sprint Goal items are complete
- User says "レビュー", "review", "見せて"

## Process

### 1. Prepare the Increment

- Read `.claude/scrum/current-sprint.md` for Sprint Goal and completed items
- Review what was actually built (git diff, file changes, features)
- Verify against Definition of Done (`.claude/scrum/definition-of-done.md`)

### 2. Present to Stakeholder

In Japanese, show the stakeholder:
- What the Sprint Goal was
- What was delivered (concrete, demonstrable results)
- How it works (show files, run demos if applicable)
- What was NOT delivered and why (transparency)

### 3. Gather Feedback

Ask the stakeholder:
- Does this meet your expectations?
- What would you change?
- What do you want next?

### 4. Update Backlog

Spawn `scrum-product-owner` agent to:
- Incorporate feedback as new backlog items
- Re-order backlog based on stakeholder priorities
- Remove items that are no longer relevant
- Update `.claude/scrum/product-backlog.md`

### 5. Close Sprint Items

In `.claude/scrum/current-sprint.md`, mark all completed items as `done`.

## Output

Summary in Japanese:
- Sprint Goal: achieved / partially achieved / not achieved
- Key deliverables
- Stakeholder feedback captured
- Backlog updated

## Next Step

"振り返りを行いますか？ `/scrum retro` で改善点を見つけて組織を成長させましょう。"
