# Scrum Agents

AI エージェントが Scrum を自動実践し、ユーザーに価値を届けるスキルパッケージ。

## インストール

```bash
git clone git@github.com:gyumaruya/scrum_agents.git
cd scrum_agents
```

Claude Code で `/scrum install` を実行:

```
/scrum install
```

グローバルスキルとして登録され、どのプロジェクトでも `/scrum` が使えるようになる。

## 使い方

任意のプロジェクトで:

```
/scrum
```

初回でフレームワーク導入 → Product Goal を聞かれる → 答えるだけで開発が始まる。

### 自動フロー

```
ユーザー: "Xが欲しい"
  → PO がバックログアイテム作成
  → Sprint Planning 自動実行
  → Dev が実装
  → インクリメント完成 → Sprint Review
  → ユーザーがフィードバック（非同期可）
  → Retrospective 自動実行 → 組織が改善
  → 次のスプリントへ
```

ユーザーがやること:
1. 欲しいものを伝える
2. インクリメントをレビューし、フィードバックする

それ以外は全て自動。

### ツール非依存

このスキルは **Scrum のプロセス** を定義する。特定のツールには依存しない。

- Issue トラッカーがあれば活用する（GitHub, GitLab, Jira, Redmine 等）
- なくても `docs/scrum/` のマークダウンファイルで全て運用可能
- 導入時に環境を検出し、最適なワークフローを構成する

### 手動コマンド（必要な時だけ）

| コマンド | 説明 |
|---------|------|
| `/scrum status` | 現在の状態確認 |
| `/scrum plan` | 手動で Sprint Planning |
| `/scrum daily` | Daily Scrum |
| `/scrum review` | Sprint Review |
| `/scrum retro` | Retrospective |
| `/scrum refine` | バックログ整理 |

## ファイル構造（導入先プロジェクト）

```
docs/scrum/
  definition-of-done.md              完了の定義
  sprints/
    current.md                       現在のスプリント
    YYYY-MM-DD_sprint-NNN/           アーカイブ（日付+番号）
      plan.md
      log.md
      review.md
      retrospective.md
  logs/
    failures.md                      失敗ログ
    decisions.md                     設計決定ログ
    adaptations.md                   適応ログ
```

外部ツールがあればそれがバックログ。なければ `docs/scrum/backlog.md` を使用。

## 自己成長

Retrospective で SM エージェントが組織ファイルを改善:
- ルール、エージェント定義、完了の定義、CLAUDE.md
- 全て git commit → 学習履歴として残る

## アンインストール

```
/scrum uninstall
```

グローバルスキルのシンボリックリンクを削除。
プロジェクトの Scrum ファイルも削除するか確認される。
