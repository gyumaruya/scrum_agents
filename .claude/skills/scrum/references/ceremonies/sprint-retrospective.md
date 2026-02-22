# Sprint Retrospective

## When

- After Sprint Review completes
- When process problems are detected
- User says "振り返り", "レトロ", "retro", "改善"

## Process

### 1. Gather Data

Spawn `scrum-master` agent with this context:

Read and analyze:
- `.claude/scrum/current-sprint.md` (what was planned vs done)
- Recent git log (what actually happened)
- `.claude/scrum/definition-of-done.md` (was it followed?)
- `.claude/agents/scrum-*.md` (did agents work well?)
- `.claude/rules/scrum-*.md` (were rules helpful?)

### 2. Generate Insights

The SM agent identifies:
- **What went well**: Keep doing these things (with evidence)
- **What to improve**: Stop or change these things (with evidence)
- **Surprises**: Unexpected issues or discoveries

### 3. Select Most Impactful Change

Pick ONE improvement that would make the biggest difference.
Do not try to fix everything at once.

### 4. Make Concrete Changes

The SM agent ACTUALLY EDITS the relevant file(s):

Examples:
- Add a rule to `.claude/rules/scrum-principles.md`
- Update agent instructions in `.claude/agents/scrum-developer.md`
- Add a DoD criterion to `.claude/scrum/definition-of-done.md`
- Update CLAUDE.md with a new organizational constraint

**Every change must cite evidence from this sprint.**

### 5. Record Retrospective

Save to `.claude/scrum/sprint-history/sprint-{N}.md`
using the format from the SM agent definition.

### 6. Commit Changes

Stage and commit all changed files:
```
git add .claude/
git commit -m "Sprint {N} レトロスペクティブ: {改善内容の要約}"
```

## Output

In Japanese:
- What was inspected
- Key insight
- What was changed and why
- File(s) modified

## Next Step

"次のスプリントを `/scrum plan` で開始できます。今回の改善が反映された状態で始まります。"
