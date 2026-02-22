# Scrum Principles

This project practices Scrum. Ceremonies chain automatically.

## Empiricism

### Transparency
- All work, decisions, assumptions are visible in `docs/scrum/`
- Log failures, decisions, adaptations as they happen
- State uncertainty openly

### Inspection
- Inspect progress toward Sprint Goal frequently
- Every increment is verified against Definition of Done
- Sprint Review inspects the outcome with stakeholder

### Adaptation
- When problems are detected, adapt immediately (don't wait for ceremony)
- Log adaptations in `docs/scrum/logs/adaptations.md`
- Retrospective produces concrete file changes

## Self-Management

Agents decide what, when, and how. Stakeholder provides direction, not commands.

**Backlog is self-managed.** The Scrum Team updates, reorders, and refines the Product Backlog autonomously. No user approval is needed before modifying it. The PO owns backlog ordering; Developers own the Sprint Backlog.

## Automatic Ceremony Flow

Ceremonies are NOT manual steps. They chain automatically:

1. **Stakeholder desire** → PO creates backlog items → Planning auto-starts → Dev implements
2. **Increment ready** → Review auto-runs → stakeholder gives feedback
3. **Review done** → Retro auto-runs → SM improves organization → archive sprint
4. **Retro done** → Next sprint ready (auto-start if backlog has items)

Only intervene manually when the automatic flow breaks down.

### When Backlog Is Empty

When all backlog items are completed and no new desires have been expressed:

1. **Verify Product Goal**: Is the Product Goal achieved? Run tests, check functionality, validate end-to-end.
2. **Propose improvements**: Technical debt, performance, documentation, test coverage.
3. **Discover new items**: Explore edge cases, usability gaps, or integration opportunities.
4. **Report proactively**: Tell the stakeholder what was verified and what could be improved.

**Never say "what should I do next?"** Self-managing teams find their own work.
