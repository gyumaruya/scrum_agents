# scrum_agents

Scrum スキルパッケージの開発リポジトリ。

## What This Is

どのプロジェクトにもインストールでき、AI エージェントが Scrum を実践しながら開発を駆動する汎用スキルパッケージ。

## Package Structure

```
.claude/skills/scrum/          ← インストール対象
  SKILL.md                      メインエントリポイント
  references/
    agents/                     PO / SM / Dev エージェント定義
    templates/                  Sprint / Backlog / DoD テンプレート
    rules/                      Scrum 原則・価値観の行動ルール
    ceremonies/                 各セレモニーの詳細手順
```

## Development

```bash
# Install for testing
./install.sh

# Test in another project
cd /path/to/other/project
# Then in Claude Code: /scrum
```

## Self-Update Workflow

スキルや hook を更新した後、自身を再起動して最新状態を反映できる。

```
1. git push + merge to main     # 変更をメインに反映
2. npx skills update             # スキルパッケージを更新
3. /reload                       # セッションを再起動（reload スキル）
4. 最新のスキル・hook が有効になる
```

**`/reload` スキル**: セッションを tmux 内で再起動する。
再起動により以下が反映される:
- 更新されたスキル定義（SKILL.md 等）
- 新規・変更された hook
- CLAUDE.md の変更
- エージェント定義の変更

開発中にスキルやルールを変更したら、`/reload` で即座に反映を確認できる。

## Research

- `.claude/docs/research/scrum-principles.md` -- Scrum公式ガイドのリサーチ
- `.claude/docs/research/ai-agent-self-improvement.md` -- AI自己改善パターン

## Design Decisions

`.claude/docs/DESIGN.md` に記録。

## Scrum (v1.3.0)

このプロジェクトは Scrum で運用されている。`/scrum` スキルが導入済み。

### Artifacts

| Artifact | Location |
|----------|----------|
| Product Backlog | `docs/scrum/backlog.md` |
| Sprint Backlog | `docs/scrum/sprints/current.md` |
| Definition of Done | `docs/scrum/definition-of-done.md` |
| Sprint Archive | `docs/scrum/sprints/YYYY-MM-DD_sprint-NNN/` |
| Failure Log | `docs/scrum/logs/failures.md` |
| Decision Log | `docs/scrum/logs/decisions.md` |
| Adaptation Log | `docs/scrum/logs/adaptations.md` |
| Role Interactions | `docs/scrum/logs/role-interactions.md` |

### Ceremony Auto-Flow

Ceremonies chain automatically. Agents MUST NOT stop between ceremonies.

```
User desire → PO backlog → Planning → Dev → Review → Retro → Next Sprint
```

**Flow Rules:**
1. Never stop between ceremonies. Review → Retro → Next Planning is one continuous flow.
2. Stakeholder feedback is async. Present, ask, proceed. Do not wait.
3. Backlog operations need no approval. Update and report.
4. When backlog has items, start next sprint immediately.
5. When backlog is empty, self-generate work. Never ask "what should I do next?"

### Anti-Patterns (NEVER DO)

| Do NOT | Do This Instead |
|--------|-----------------|
| "続けますか？" between ceremonies | Proceed immediately |
| "バックログを更新してよいですか？" | Update and report |
| "次に何をしますか？" | Check backlog or self-generate work |
| "マージしてよいですか？" | Execute the merge |
| Wait for response before Retro | Present increment, start Retro |
| "期待通りですか？" and stop | Ask, but proceed without waiting |
| Declare intent without executing | Execute the action in the same turn |
| Skip delivery verification | Merge → update → reload → run → confirm |
| Work without an active Sprint | Start Sprint Planning first. Even 1-item sprint is a sprint. |
