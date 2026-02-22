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
  → PO が Issue 作成（バックログ）
  → Sprint Planning 自動実行
  → Dev がブランチ + PR で実装
  → インクリメント完成 → Sprint Review（PR レビュー）
  → ユーザーが PR/Issue でフィードバック（非同期）
  → Retrospective 自動実行 → 組織が改善
  → 次のスプリントへ
```

ユーザーがやること:
1. 欲しいものを伝える
2. PR をレビューし、Issue/PR コメントでフィードバックする

それ以外は全て自動。

### GitHub/Bitbucket 連携

| Scrum アーティファクト | プラットフォーム機能 |
|----------------------|-------------------|
| Product Backlog | Issues（label: `backlog`） |
| Sprint Backlog | Issues（label: `sprint:current`） |
| Sprint Work | Pull Requests |
| Sprint Review | PR レビュー |
| フィードバック | Issue/PR コメント（非同期） |

`gh` CLI が使えない環境では、マークダウンファイルにフォールバック。

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

GitHub 環境では Issues がバックログ。`gh` が使えない場合は `docs/scrum/backlog.md` を使用。

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
