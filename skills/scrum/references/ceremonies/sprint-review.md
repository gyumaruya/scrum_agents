# Sprint Review

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Increment Presentation | **Dev** | -- | Increment → PO for inspection |
| Acceptance Inspection | **PO** | -- | Review result → Stakeholder |
| Stakeholder Feedback | **PO** | -- | Feedback → Backlog |
| Backlog Update | **PO** | -- | Updated backlog |

## Input
- `docs/scrum/sprints/current.md` -- Sprint Goal, items, and their completion status
- `docs/scrum/definition-of-done.md` -- Criteria to verify
- `docs/scrum/logs/role-interactions.md` -- Cross-role review history

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

### 3. Collaborate with Stakeholder (Working Session)

**This is NOT just a presentation.** The Sprint Review is a working session where the
Scrum Team and stakeholders collaborate on what to do next.

In Japanese, facilitate the session:

**What changed for you (ユーザーにとっての変化):**
Explain in 2-3 sentences what the stakeholder can now do that they couldn't before,
or what got better for them. Focus on value, not implementation details.

**Summary table:**
| Item | Status | What It Means For You |
|------|--------|-----------------------|
| {item} | {done/partial/not done} | {1-sentence user-facing impact} |

**Collaborate:**
- Ask: "この方向性で合っていますか？ 次に何を優先すべきですか？"
- Discuss what could be done next to optimize value
- Invite stakeholder to suggest backlog changes directly
- The result of the Sprint Review is a revised Product Backlog

**Details (for those who want them):**
- Sprint Goal and whether it was achieved
- What was delivered (concrete changes with file references)
- What was NOT delivered and why (transparency)
- PO's acceptance inspection result

**Principle:** Lead with value, then collaborate on next steps. This is a dialogue, not a report.

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
