# Definition of Done

An Increment is "Done" when ALL criteria are met:

## Quality

- [ ] Implementation works as intended
- [ ] No known defects introduced
- [ ] Follows project conventions

## Testing

- [ ] {Adapt to project -- detect and replace with concrete checks:}
  - pyproject.toml with pytest → "pytest passes"
  - package.json with jest/vitest → "npm test passes"
  - Cargo.toml → "cargo test passes"
  - No test framework detected → "Manual verification documented in review.md"
  - ruff detected → "ruff check passes"
  - eslint detected → "eslint passes"

## Versioning (MANDATORY for skill file changes)

- [ ] SKILL.md `metadata.version` bumped according to versioning policy
- [ ] `docs/scrum/.scrum-version` updated to match (via `/scrum update` or manually)
- [ ] Version bump rationale recorded in sprint log or decisions.md

**Versioning Policy (SemVer):**
- **Major** (X.0.0): Breaking changes -- file structure changes, removed features, incompatible ceremony flow
- **Minor** (x.Y.0): New features -- new ceremony steps, new agent capabilities, new sections in templates
- **Patch** (x.y.Z): Fixes -- wording improvements, bug fixes, template tweaks, cleanup

## Delivery Verification (MANDATORY for skill/process file changes)

- [ ] Changes merged to main
- [ ] Installed skill files updated (copy source to installed location)
- [ ] Session reloaded (`/reload` or equivalent)
- [ ] Post-reload verification: run `/scrum status` or `/scrum update` to confirm changes are live
- [ ] Verification result recorded in sprint log

## Transparency

- [ ] Changes are documented (what and why)
- [ ] Stakeholder can understand what was delivered

## Scrum

- [ ] Acceptance criteria from backlog item are met
- [ ] Increment is usable (not half-finished)
- [ ] Item status in current.md matches PO Review result (approved / needs-revision)
- [ ] PO Review history is recorded in the role interactions log

---

*This DoD evolves through retrospectives. SM agent updates it based on evidence.*
