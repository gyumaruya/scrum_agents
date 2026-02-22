# Scrum Agent Organization - Design Document

## Overview

AI エージェントが Scrum の原則と行動プラクティスに基づき、自己成長する組織として動作するフレームワーク。
ユーザーはステークホルダーとして「欲しいもの」を伝え、エージェントが自己管理チームとして全てを決定・実行・改善する。

### Vision

- エージェント組織が Scrum の3本柱（透明性・検査・適応）を体現する
- 作業のたびに振り返り、自分自身のスキル・ルール・行動パターンを改善する
- CLAUDE.md = 組織の憲法、Skills = 組織の能力、Memory = 組織の記憶

### Platform

- Claude Code (CLAUDE.md ネイティブ対応)
- Copilot CLI (サブエージェント実行)
- Git (組織の学習履歴)

---

## Architecture

### Role Mapping

| Scrum Role | Agent Implementation | Responsibility |
|-----------|---------------------|----------------|
| Stakeholder | User (human) | 欲しいものを伝える。仕様化はしない |
| Product Owner | PO subagent | ステークホルダーの要望をバックログに変換、優先順位決定 |
| Scrum Master | SM subagent | プロセス改善、レトロスペクティブ実行、CLAUDE.md/skills更新 |
| Developers | Dev subagent(s) | 実装、テスト、インクリメント作成 |

### Organization Structure

```
User (Stakeholder)
     │ "欲しいもの"を伝える
     ▼
┌──────────────────────────────────┐
│  CLAUDE.md (Organization        │
│  Constitution)                   │
│  = Scrum principles as behavior │
│  rules for all agents           │
└────────────┬─────────────────────┘
             │ spawns
     ┌───────┼───────┐
     ▼       ▼       ▼
   [PO]    [SM]    [Dev]
   Agent   Agent   Agent(s)
```

### File Structure

```
scrum_cc/
├── CLAUDE.md                     # Organization constitution
├── .claude/
│   ├── agents/                   # Scrum role definitions
│   │   ├── product-owner.md      # PO: backlog, goals, stakeholder translation
│   │   ├── scrum-master.md       # SM: process improvement, retrospective
│   │   └── developer.md          # Dev: implementation, testing, DoD
│   ├── skills/                   # Scrum ceremonies as skills
│   │   ├── sprint-planning/      # Sprint planning ceremony
│   │   ├── daily-scrum/          # Daily sync/inspection
│   │   ├── sprint-review/        # Review increment with stakeholder
│   │   ├── sprint-retrospective/ # Reflect and improve
│   │   └── backlog-refinement/   # Refine and order backlog
│   ├── agent-memory/             # Persistent organizational memory
│   │   ├── product-owner/        # PO's learning (stakeholder patterns)
│   │   ├── scrum-master/         # SM's process insights
│   │   └── developer/            # Dev's technical knowledge
│   ├── docs/
│   │   ├── DESIGN.md             # This file
│   │   ├── product-backlog.md    # Living product backlog
│   │   ├── definition-of-done.md # DoD criteria
│   │   ├── sprint-history/       # Past sprint records
│   │   └── research/             # Research artifacts
│   └── rules/
│       ├── scrum-values.md       # 5 Scrum values as behavior rules
│       └── empiricism.md         # 3 pillars applied to agents
```

---

## Implementation Plan

### Key Decisions

| Decision | Choice | Rationale | Date |
|----------|--------|-----------|------|
| User role in Scrum | Stakeholder | ユーザーは仕様化できない。POはエージェントが担う | 2026-02-22 |
| Agent roles | Role-based subagents | PO/SM/Devを分離。専門化による品質向上 | 2026-02-22 |
| Sprint definition | Agent-defined (goal-based) | セッション/タスク単位は不自然。エージェントが意味のある単位を判断 | 2026-02-22 |
| Self-improvement | Real-time + Retrospective | 作業中の即座適応 + 完了後の振り返りの両方 | 2026-02-22 |
| Config format | CLAUDE.md (not AGENTS.md) | AGENTS.mdはClaude Code非対応。CLAUDE.mdがネイティブ | 2026-02-22 |
| Ceremonies | Skills | Scrumセレモニーをskillsとして実装。再利用可能・自動検出 | 2026-02-22 |
| Memory | Persistent agent-memory | サブエージェントのmemory:projectフィールドで永続化 | 2026-02-22 |
| Development approach | Scrum-driven | この開発自体もScrum原則に従う。憶測で進めない | 2026-02-22 |

### Constraints (Technical Facts)

- Subagents cannot spawn other subagents (no nesting)
- MEMORY.md limited to 200 lines (auto-injected)
- AGENTS.md not natively supported in Claude Code
- MCP tools unavailable in background subagents

### Sprint Concept for Agents

Sprint = Goal-based, not time-based or session-based.

1. Stakeholder expresses desire
2. PO agent translates to Product Backlog items
3. Team (PO+Dev) defines Sprint Goal
4. Dev agent(s) execute work
5. SM agent facilitates real-time inspection
6. Increment delivered → Sprint Review with stakeholder
7. SM agent runs Retrospective → updates CLAUDE.md/skills/memory

### Self-Improvement Loop

```
Real-time (during work):
  Problem detected → immediate adaptation → log the adaptation

Retrospective (after increment):
  Session logs → SM agent analysis → identify patterns →
  → Update CLAUDE.md (rules)
  → Update Skills (capabilities)
  → Update Memory (knowledge)
  → Commit to Git (learning history)
```

---

## TODO

- [ ] Define CLAUDE.md content (organization constitution)
- [ ] Create PO subagent definition
- [ ] Create SM subagent definition
- [ ] Create Dev subagent definition
- [ ] Create sprint-planning skill
- [ ] Create sprint-retrospective skill
- [ ] Create daily-scrum skill
- [ ] Create sprint-review skill
- [ ] Create backlog-refinement skill
- [ ] Define Definition of Done
- [ ] Create product-backlog.md template
- [ ] Implement real-time adaptation mechanism
- [ ] Implement retrospective automation

---

## Open Questions

- [ ] Sprint Goal の粒度: エージェントがどの程度の粒度で目標を切るべきか？
- [ ] レトロスペクティブのトリガー: いつ「意味のあるインクリメント」と判断するか？
- [ ] サブエージェント間の同期: ネスト不可の制約下でPO/SM/Devがどう連携するか？
- [ ] スケーリング: 複雑なタスクで複数Devエージェントをどう調整するか？

---

## Changelog

- 2026-02-22: Initial design decisions recorded
  - User=Stakeholder, Role-based subagents (PO/SM/Dev)
  - Sprint=agent-defined (goal-based), Self-improvement=real-time+retrospective
  - CLAUDE.md=organization constitution, Skills=Scrum ceremonies
  - Persistent memory for organizational learning
