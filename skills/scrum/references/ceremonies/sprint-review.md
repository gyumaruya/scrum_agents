# Sprint Review

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Increment Presentation | **Dev** | -- | Increment → PO for inspection |
| Acceptance Inspection | **PO** | -- | Review result → Stakeholder |
| Stakeholder Feedback | **PO** | -- | Feedback → Backlog |
| Backlog Update | **PO** | -- | Updated backlog |

## When (Auto-trigger)

- All Sprint Backlog items are `done` or sprint is otherwise complete
- Developer agent reports increment is ready
- Manual: `/scrum review`

## Process

### 1. Prepare (Dev)

Spawn `scrum-developer` agent:
- Read `docs/scrum/sprints/current.md` for goal and completed items
- Collect what was built (change summary, features delivered, files changed)
- Prepare increment presentation

**Handoff:** Dev passes increment summary to PO for acceptance inspection.
Record in `docs/scrum/logs/role-interactions.md`.

### 2. Acceptance Inspection (PO)

Spawn `scrum-product-owner` agent to independently review:
- Verify each item against its acceptance criteria
- Verify against `docs/scrum/definition-of-done.md`
- Judge: approved / needs-revision for each item

**This is a cross-role review.** PO inspects Dev's work objectively.
Record review result in `docs/scrum/logs/role-interactions.md`.

### 3. Present to Stakeholder

In Japanese, show:
- Sprint Goal and whether it was achieved
- What was delivered (concrete results)
- What was NOT delivered and why (transparency)
- PO's acceptance inspection result

### 4. Gather Feedback

Ask briefly: "期待通りですか？変更や追加はありますか？"

### 5. Update Backlog (PO)

Product Owner agent:
- Add feedback as new items
- Re-order backlog
- Remove completed or irrelevant items
- Write to `docs/scrum/backlog.md`

### 6. Record Review

Save to sprint archive later (during archival after retro).
Update `docs/scrum/sprints/current.md` log with review outcome.

## Auto-next

After stakeholder feedback → auto-trigger Retrospective.
