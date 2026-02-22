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

## Sprint Rules (Scrum Guide 2020)

### Sprint Constraints
During a Sprint:
- No changes are made that would endanger the Sprint Goal
- Quality does not decrease
- The Product Backlog is refined as needed
- Scope may be clarified and renegotiated with the PO as more is learned

### Sprint Cancellation
- Only the Product Owner has the authority to cancel a Sprint
- A Sprint would be cancelled if the Sprint Goal becomes obsolete
- When cancelled: completed items are reviewed, incomplete items go back to backlog
- Sprint Cancellations are rare and should be logged in `docs/scrum/logs/failures.md`

### Product Goal
- The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next
- The Product Goal is in the Product Backlog; the rest of the backlog emerges to fulfill it

### Sprint Backlog Ownership
- The Sprint Backlog is a plan by and for the Developers
- Developers own the Sprint Backlog and update it throughout the Sprint
- Only Developers can change the Sprint Backlog during the Sprint

### Multiple Increments
- Multiple Increments may be created within a Sprint
- An Increment may be delivered to stakeholders prior to the end of the Sprint
- The Sprint Review should never be considered a gate to releasing value

## Automatic Ceremony Flow

Ceremonies are NOT manual steps. They chain automatically:

1. **Stakeholder desire** → PO creates backlog items → Planning auto-starts → Dev implements
2. **Increment ready** → Review auto-runs → stakeholder gives feedback
3. **Review done** → Retro auto-runs → SM improves organization → archive sprint
4. **Retro done** → Next sprint ready (auto-start if backlog has items)

Only intervene manually when the automatic flow breaks down.
