# Sprint Review

## When (Auto-trigger)

- All Sprint Backlog items are `done` or sprint is otherwise complete
- Developer agent reports increment is ready
- Manual: `/scrum review`

## Process

### 1. Prepare

- Read `docs/scrum/sprints/current.md` for goal and completed items
- Verify against `docs/scrum/definition-of-done.md`
- Collect what was built (change summary, features delivered, files changed)

### 2. Present to Stakeholder

In Japanese, show:
- Sprint Goal and whether it was achieved
- What was delivered (concrete results)
- What was NOT delivered and why (transparency)

### 3. Gather Feedback

Ask briefly: "期待通りですか？変更や追加はありますか？"

### 4. Update Backlog

Spawn `scrum-product-owner` agent to:
- Add feedback as new items
- Re-order backlog
- Remove completed or irrelevant items
- Write to `docs/scrum/backlog.md`

### 5. Record Review

Save to sprint archive later (during archival after retro).
Update `docs/scrum/sprints/current.md` log with review outcome.

## Auto-next

After stakeholder feedback → auto-trigger Retrospective.
