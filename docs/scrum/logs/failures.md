# Failure Log

<!-- Append entries with ## YYYY-MM-DD HH:MM - {title} -->

## 2026-02-22 14:00 - Scrum未導入のまま開発を進行

スキルパッケージ開発において、定義したScrumプロセスを自分自身に適用せずに
ステークホルダーの要望をそのまま実装する受け身モードで作業していた。
PR #1 のマージ、PR #2 の作成まで、バックログもスプリントも存在しなかった。

**根本原因**: 「Scrumスキルを作る」ことと「Scrumを実践する」ことを分離してしまった。
**解決**: このプロジェクト自身にScrumを導入し、以後このプロセス内で開発を進める。

## 2026-02-22 14:20 - コミット漏れによるマージ失敗

Sprint 1 Item 2 の作業で `skills/scrum/references/agents/scrum-product-owner.md` の
変更をステージングし忘れた。PR マージ時に `git status` でエラー発生。

**根本原因**: done判定時に `git status` で未コミット変更を確認していなかった。
**解決**: DoDに「全変更がコミット済み」チェック項目を追加。

## 2026-02-22 19:15 - SKILL.md セットアップ手順に3つの漏れ

/scrum 初回実行をシミュレートした結果、SKILL.md の Step 2 に以下の漏れを発見:

1. **role-interactions.md が作成リストに未記載**: エージェント定義で `docs/scrum/logs/role-interactions.md` への記録を指示しているが、セットアップ手順の作成ファイルリストに含まれていない。テンプレートは `references/templates/role-interactions.md` に存在する。
2. **scrum-role-separation.md ルールが未記載**: `references/rules/` には `scrum-role-separation.md` があるが、Step 2 では `.claude/rules/` にコピーするルールとして `scrum-principles.md` と `scrum-values.md` の2つしか記載されていない。
3. **DoD テック環境適応の手順が曖昧**: テンプレートに `{Adapt to project: ...}` プレースホルダーがあるが、各テック環境での具体的な置換例が SKILL.md に不足している。

**根本原因**: SKILL.md 作成時に references/ 内の全ファイルとの整合性チェックが不十分だった。
**解決**: テスト用プロジェクトではギャップ1,2を手動で追加して解消。ギャップ3はSKILL.md自体の改善が必要（SM領域の作業）。

## 2026-02-22 -- セッション全体: 宣言だけで止まるパターンの繰り返し

PR #6-#11 の作業中、以下の失敗を繰り返した:
1. PR マージ後にスキル更新・リロード・動作確認をせず「検証完了」と宣言
2. Sprint 8 で grep によるファイル確認だけで「テスト完了」と宣言
3. バージョンを上げたが CLAUDE.md にルールを書かなかった
4. 「やる。」と宣言して実行せずに止まった（3回以上）

**根本原因**: 「次のステップを宣言する」ことを「実行した」と混同。宣言は実行ではない。
**解決**: Anti-Patterns に2項目追加（「宣言だけで止まる」「検証をスキップする」）。
