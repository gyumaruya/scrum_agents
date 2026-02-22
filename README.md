# Scrum Agents

AI エージェントが Scrum を実践し、ユーザーに価値を届けるためのスキルパッケージ。

## インストール

```bash
git clone git@github.com:gyumaruya/scrum_agents.git
cd scrum_agents
./install.sh
```

`~/.claude/skills/scrum` にシンボリックリンクが作成されます。

## 使い方

任意のプロジェクトで Claude Code を起動し:

```
/scrum
```

初回呼び出しでプロジェクトに Scrum フレームワークが導入されます。

### コマンド

| コマンド | 説明 |
|---------|------|
| `/scrum` | 初回: セットアップ / 以降: ステータス表示 |
| `/scrum plan` | Sprint Planning: ゴール設定 + 開発開始 |
| `/scrum daily` | Daily Scrum: 進捗検査 + 適応 |
| `/scrum review` | Sprint Review: ステークホルダーにインクリメント提示 |
| `/scrum retro` | Retrospective: 振り返り + 組織改善 |
| `/scrum refine` | Backlog Refinement: バックログ整理 |
| `/scrum status` | 現在のスプリント状態 |

### ワークフロー

```
/scrum          セットアップ + Product Goal 設定
     |
/scrum plan     Sprint Goal 設定 + 開発開始
     |
  [開発]        Dev agent が実装
     |
/scrum review   ステークホルダーに成果物を提示
     |
/scrum retro    振り返り + 組織ファイル改善 + git commit
     |
/scrum plan     改善された組織で次のスプリント開始
```

## 仕組み

### ユーザーの役割

ユーザーは **ステークホルダー** です。「何が欲しいか」を伝えるだけで、仕様化・タスク分割・実装方法の決定は全てエージェントが行います。

### エージェント

| ロール | 責任 |
|-------|------|
| Product Owner | ステークホルダーの要望をバックログに変換 |
| Scrum Master | プロセス改善、レトロスペクティブ、組織ファイル更新 |
| Developer | 実装、テスト、インクリメント作成 |

### 自己成長

レトロスペクティブで SM エージェントが組織ファイルを改善します:
- ルール (`.claude/rules/scrum-*.md`)
- エージェント定義 (`.claude/agents/scrum-*.md`)
- 完了の定義 (`.claude/scrum/definition-of-done.md`)

変更は git commit され、組織の学習履歴として残ります。

## アンインストール

```bash
rm ~/.claude/skills/scrum
```

プロジェクト内の `.claude/scrum/` 等は手動で削除してください。
