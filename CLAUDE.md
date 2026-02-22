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

## Research

- `.claude/docs/research/scrum-principles.md` -- Scrum公式ガイドのリサーチ
- `.claude/docs/research/ai-agent-self-improvement.md` -- AI自己改善パターン

## Design Decisions

`.claude/docs/DESIGN.md` に記録。
