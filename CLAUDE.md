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
