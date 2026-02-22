# Sprint Retrospective

## When (Auto-trigger)

- After Sprint Review completes
- When a significant process problem is detected mid-sprint
- Manual: `/scrum retro`

## Process

### 1. Gather Data

Spawn `scrum-master` agent. It reads:
- `docs/scrum/sprints/current.md` (planned vs done)
- `docs/scrum/logs/failures.md` (what went wrong)
- `docs/scrum/logs/adaptations.md` (mid-sprint changes)
- Recent git log
- `.claude/agents/scrum-*.md` (did agents work well?)
- `.claude/rules/scrum-*.md` (were rules helpful?)
- `docs/scrum/definition-of-done.md` (was it followed?)

### 2. Generate Insights

SM agent identifies with specific evidence:
- What went well (keep doing)
- What to improve (stop or change)
- Surprises (unexpected)

### 3. Make ONE Concrete Change

Pick the most impactful improvement. Actually edit the file:

| Target | When |
|--------|------|
| `.claude/rules/scrum-*.md` | Process rules need updating |
| `.claude/agents/scrum-*.md` | Agent behavior needs refinement |
| `docs/scrum/definition-of-done.md` | Quality criteria need adjustment |
| `CLAUDE.md` | Organizational constraints need updating |

**Every change must cite evidence from this sprint.**

### 4. Archive Sprint

Create `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/` and save:
- `plan.md` -- Sprint Goal, selected items, approach
- `log.md` -- Copy of daily log from current sprint
- `review.md` -- Review outcome and stakeholder feedback
- `retrospective.md` -- This retrospective's findings and changes

### 5. Reset Current Sprint

Clear `docs/scrum/sprints/current.md` for next sprint.

### 6. Commit

```
git add docs/scrum/ .claude/
git commit -m "Sprint {N} 完了: {Sprint Goalの要約}

レトロスペクティブ: {改善内容}
"
```

## Output

In Japanese:
- Sprint outcome summary
- What was changed and why
- "次のスプリントは改善された状態で始まります。"

## Auto-next

Sprint archived. If backlog has items → suggest starting next sprint.
If user has new desires → PO auto-translates → next sprint auto-starts.
