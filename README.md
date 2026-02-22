# Scrum Agents

AI エージェントが Scrum を自動実践し、ユーザーに価値を届けるスキルパッケージ。

## インストール

```bash
git clone git@github.com:gyumaruya/scrum_agents.git
cd scrum_agents
./install.sh
```

## 使い方

任意のプロジェクトで:

```
/scrum
```

初回でフレームワーク導入 → Product Goal を聞かれる → 答えるだけで開発が始まる。

### 自動フロー

```
ユーザー: "Xが欲しい"
  → PO が自動でバックログ作成
  → Sprint Planning 自動実行
  → Dev が実装開始
  → インクリメント完成 → Sprint Review 自動実行
  → ユーザーがフィードバック → Retrospective 自動実行
  → 組織が改善される → 次のスプリントへ
```

ユーザーがやること:
1. 欲しいものを伝える
2. レビューでフィードバックする

それ以外は全て自動。

### 手動コマンド（必要な時だけ）

| コマンド | 説明 |
|---------|------|
| `/scrum status` | 現在の状態確認 |
| `/scrum plan` | 手動で Sprint Planning |
| `/scrum retro` | 手動で Retrospective |
| `/scrum refine` | バックログ整理 |

## ファイル構造（導入先プロジェクト）

```
docs/scrum/
  backlog.md                         Product Backlog
  definition-of-done.md              完了の定義
  sprints/
    current.md                       現在のスプリント
    2026-02-22_sprint-001/           アーカイブ（日付+番号）
      plan.md
      log.md
      review.md
      retrospective.md
  logs/
    failures.md                      失敗ログ
    decisions.md                     設計決定ログ
    adaptations.md                   適応ログ
```

## 自己成長

Retrospective で SM エージェントが組織ファイルを改善:
- ルール、エージェント定義、完了の定義、CLAUDE.md
- 全て git commit → 学習履歴として残る

## アンインストール

```bash
rm ~/.claude/skills/scrum
```
