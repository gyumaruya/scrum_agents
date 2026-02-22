---
name: scrum
description: |
  Scrum framework for AI agent self-management. Brings Scrum practices into
  any project to drive development and continuous improvement.
  First call sets up Scrum in the project. Then use subcommands for ceremonies.
  Triggers: "scrum", "sprint planning", "retrospective", "backlog", "sprint review",
  "振り返り", "スプリント", "バックログ", "レトロ", "計画"
metadata:
  short-description: Scrum framework for AI agents
  argument-hint: "[plan|daily|review|retro|refine|status]"
---

# Scrum Skill

Scrum is the MEANS, not the GOAL. The goal is delivering value to users.

## Argument Routing

Parse `$ARGUMENTS` and route:

| Argument | Action |
|----------|--------|
| (empty, first time) | Run Setup (see below) |
| (empty, already set up) | Show Status + suggest next action |
| `plan` | Sprint Planning → see `references/ceremonies/sprint-planning.md` |
| `daily` | Daily Scrum → see `references/ceremonies/daily-scrum.md` |
| `review` | Sprint Review → see `references/ceremonies/sprint-review.md` |
| `retro` | Retrospective → see `references/ceremonies/sprint-retrospective.md` |
| `refine` | Backlog Refinement → see `references/ceremonies/backlog-refinement.md` |
| `status` | Show current sprint status |

**How to detect first time**: Check if `.claude/scrum/` directory exists in the current project.

Arguments: $ARGUMENTS

---

## Setup (First-Time `/scrum`)

When `.claude/scrum/` does NOT exist, run this setup:

### Step 1: Detect Project

- Check for existing `.claude/` structure
- Detect tech stack (look for `pyproject.toml`, `package.json`, `Cargo.toml`, etc.)
- Check for existing CLAUDE.md

### Step 2: Create Scrum Structure

Create these directories and files in the current project:

```
.claude/
  scrum/
    current-sprint.md       ← copy from references/templates/current-sprint.md
    product-backlog.md       ← copy from references/templates/product-backlog.md
    definition-of-done.md    ← copy from references/templates/definition-of-done.md (adapt to tech stack)
    sprint-history/          ← create empty directory
  agents/                    ← create if not exists
    scrum-product-owner.md   ← copy from references/agents/scrum-product-owner.md
    scrum-master.md          ← copy from references/agents/scrum-master.md
    scrum-developer.md       ← copy from references/agents/scrum-developer.md
  rules/                     ← create if not exists
    scrum-principles.md      ← copy from references/rules/scrum-principles.md
    scrum-values.md          ← copy from references/rules/scrum-values.md
```

**IMPORTANT**: Read the reference files from this skill's `references/` directory and write them to the target project. Adapt the Definition of Done to the detected tech stack.

### Step 3: Update CLAUDE.md

Append this minimal section to the project's CLAUDE.md (create if needed):

```markdown

## Scrum

This project practices Scrum for agent self-management.

- Product Backlog: `.claude/scrum/product-backlog.md`
- Current Sprint: `.claude/scrum/current-sprint.md`
- Definition of Done: `.claude/scrum/definition-of-done.md`
- Sprint History: `.claude/scrum/sprint-history/`

Agents follow Scrum principles defined in `.claude/rules/scrum-principles.md`.
Use `/scrum [plan|daily|review|retro|refine|status]` for ceremonies.
```

### Step 4: Ask for Product Goal

Ask the stakeholder (user) in Japanese:

"Scrumフレームワークを導入しました。このプロジェクトの Product Goal は何ですか？何を実現したいですか？"

### Step 5: Create Initial Backlog

Spawn the `scrum-product-owner` agent to translate the stakeholder's response into
Product Backlog items. Write them to `.claude/scrum/product-backlog.md`.

### Step 6: Suggest Next Step

"セットアップ完了。 `/scrum plan` で最初のスプリントを開始できます。"

---

## Status (`/scrum` or `/scrum status`)

When `.claude/scrum/` already exists:

1. Read `.claude/scrum/current-sprint.md`
2. Read `.claude/scrum/product-backlog.md`
3. Count files in `.claude/scrum/sprint-history/`
4. Display in Japanese:
   - Current Sprint Goal (or "スプリント未開始")
   - Sprint Backlog items and their status
   - Product Backlog size
   - Sprint count (how many completed)
   - Suggested next action based on current state

---

## Ceremony Dispatch

For each ceremony, read the corresponding reference file and follow its instructions:

- **Sprint Planning**: Read `references/ceremonies/sprint-planning.md`
- **Daily Scrum**: Read `references/ceremonies/daily-scrum.md`
- **Sprint Review**: Read `references/ceremonies/sprint-review.md`
- **Sprint Retrospective**: Read `references/ceremonies/sprint-retrospective.md`
- **Backlog Refinement**: Read `references/ceremonies/backlog-refinement.md`

Each ceremony file contains:
- When to use
- Step-by-step process
- Which agents to spawn
- What files to read/write
- How to transition to the next natural step

---

## Core Principle

Every action serves one purpose: **deliver value to the stakeholder (user)**.

Scrum ceremonies are not bureaucracy -- they are tools that:
- Sprint Planning: ensures we work on the right thing
- Daily Scrum: keeps us on track
- Sprint Review: validates we delivered value
- Retrospective: makes us better at delivering value
- Backlog Refinement: keeps our options clear

If a ceremony doesn't serve this purpose in the current context, adapt or skip it.
Scrum is empirical -- inspect and adapt.
