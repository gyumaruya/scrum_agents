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

### 1. Pre-Review DoD Verification (Dev)

Spawn `scrum-developer` agent:
- Read `docs/scrum/sprints/current.md` for goal and completed items
- **Verify ALL items marked `done` have a DoD inspection record in the sprint log**
- If any item lacks a DoD inspection: perform the inspection NOW before proceeding
- If any DoD criterion fails: revert the item to `in_progress` and report
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

In Japanese, present the increment:

**What changed for you (ユーザーにとっての変化):**
Explain in 2-3 sentences what the stakeholder can now do that they couldn't before,
or what got better for them. Focus on value, not implementation details.

**Summary table:**
| Item | Status | What It Means For You |
|------|--------|-----------------------|
| {item} | {done/partial/not done} | {1-sentence user-facing impact} |

**Next direction:**
- State: "この方向性で進めます。次は {next items from backlog} に取り組みます。フィードバックがあればいつでもどうぞ。"
- This is **non-blocking**. Do NOT wait for a response before proceeding.
- If the stakeholder gives feedback, incorporate it in the next Backlog Refinement.

**Details (for those who want them):**
- Sprint Goal and whether it was achieved
- What was delivered (concrete changes with file references)
- What was NOT delivered and why (transparency)
- PO's acceptance inspection result

**Principle:** Lead with value, state the next direction, move on. Feedback is always welcome but never blocks.

### 4. Gather Feedback (Async)

Ask briefly: "期待通りですか？変更や追加はありますか？"

**This question is non-blocking.** Do NOT wait for a response. Proceed to Step 5
and then to Retrospective immediately. If the stakeholder responds later, their
feedback is captured in the next Backlog Refinement.

### 5. Update Backlog (PO)

Product Owner agent:
- Add feedback as new items
- Re-order backlog
- Remove completed or irrelevant items
- Write to `docs/scrum/backlog.md`

### 6. Record Review

Save to sprint archive later (during archival after retro).
Update `docs/scrum/sprints/current.md` log with review outcome.

## Output

- Increment presented to stakeholder with value-focused summary
- PO acceptance inspection recorded in `role-interactions.md`
- Backlog updated with feedback and re-ordered
- Review outcome logged in `current.md`

## Auto-next

**Do NOT wait for stakeholder feedback.** Present the increment, ask for feedback,
then immediately proceed to Retrospective. Stakeholder feedback is asynchronous --
if received later, it feeds into the next Backlog Refinement.

After presenting increment → auto-trigger Retrospective (no pause, no "shall I continue?").
