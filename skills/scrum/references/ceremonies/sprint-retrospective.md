# Sprint Retrospective

## Role Assignment

| Phase | Executor | Reviewer | Handoff |
|-------|----------|----------|---------|
| Data Gathering | **SM** | -- | Analysis data collected |
| Process Analysis | **SM** | -- | Insights generated |
| Dev Process Review | **SM** | Dev (verify observations) | Dev confirms/corrects SM's observations |
| PO Process Review | **SM** | PO (verify observations) | PO confirms/corrects SM's observations |
| Improvement Action | **SM** | -- | Organizational files changed |
| Archival | **SM** | -- | Sprint archived |

## Input
- `docs/scrum/sprints/current.md` -- Sprint state (post-Review)
- `docs/scrum/logs/failures.md` -- What went wrong
- `docs/scrum/logs/adaptations.md` -- Mid-sprint changes
- `docs/scrum/logs/role-interactions.md` -- Cross-role collaboration quality
- `docs/scrum/definition-of-done.md` -- Was it followed?
- `.claude/agents/scrum-*.md` -- Agent effectiveness
- `.claude/rules/scrum-*.md` -- Rule effectiveness

## When (Auto-trigger)

- After Sprint Review completes
- When a significant process problem is detected mid-sprint
- Manual: `/scrum retro`

## Process

### 1. Gather Data

Spawn `scrum-master` agent. SM independently reads:
- `docs/scrum/sprints/current.md` (planned vs done)
- `docs/scrum/logs/failures.md` (what went wrong)
- `docs/scrum/logs/adaptations.md` (mid-sprint changes)
- `docs/scrum/logs/role-interactions.md` (cross-role collaboration quality)
- Recent change history (VCS log)
- `.claude/agents/scrum-*.md` (did agents work well?)
- `.claude/rules/scrum-*.md` (were rules helpful?)
- `docs/scrum/definition-of-done.md` (was it followed?)

### 2. Generate Insights

SM agent identifies with specific evidence:
- What went well (keep doing)
- What to improve (stop or change)
- Surprises (unexpected)
- Role separation effectiveness (did boundaries hold?)

### 3. Cross-Role Verification

SM shares observations with Dev and PO for verification:
- Dev confirms/corrects SM's observations about implementation process
- PO confirms/corrects SM's observations about value delivery

**This ensures SM's analysis is objective and accurate.**
Record verifications in `docs/scrum/logs/role-interactions.md`.

### 4. Make ONE Concrete Change

Pick the most impactful improvement. Actually edit the file:

| Target | When |
|--------|------|
| `.claude/rules/scrum-*.md` | Process rules need updating |
| `.claude/agents/scrum-*.md` | Agent behavior needs refinement |
| `docs/scrum/definition-of-done.md` | Quality criteria need adjustment |
| `CLAUDE.md` | Organizational constraints need updating |

**Every change must cite evidence from this sprint.**

### 5. Archive Sprint (SM executes)

**Executor: SM agent.** This step is the SM's responsibility after completing Steps 1-4.

Create the sprint archive directory and save artifacts:

1. **Determine sprint number**: Count existing `sprint-NNN` directories in `docs/scrum/sprints/`, add 1, zero-pad to 3 digits.
2. **Determine date**: Use the date the retrospective is executed (today).
3. **Create directory**: `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/`
4. **Save 4 files** from `current.md` content:
   - `plan.md` -- Sprint Goal, selected items, implementation steps (from current.md header + Selected Items + Implementation Steps sections)
   - `log.md` -- Progress log (from current.md Log section)
   - `review.md` -- Review outcome and stakeholder feedback (written during Sprint Review)
   - `retrospective.md` -- This retrospective's findings and changes (from Steps 1-4 above)

### 6. Reset Current Sprint (SM executes)

**Executor: SM agent.** Reset immediately after archival.

Replace `docs/scrum/sprints/current.md` contents with:

```markdown
# Current Sprint

No active sprint. Backlog has items -- ready for Sprint Planning.
```

### 7. Commit

Commit all changes from this sprint (Scrum records, organizational improvements):

```
Sprint {N} 完了: {Sprint Goalの要約}

レトロスペクティブ: {改善内容}
```

Use the project's VCS to commit. Include Scrum records (`docs/scrum/`) and
any organizational files changed (`.claude/agents/`, `.claude/rules/`, etc.).

## Output

In Japanese:
- Sprint outcome summary
- What was changed and why
- "次のスプリントは改善された状態で始まります。"

## Auto-next

Sprint archived. If backlog has items → suggest starting next sprint.
If user has new desires → PO auto-translates → next sprint auto-starts.
