# Adaptation Log

<!-- Append entries with ## YYYY-MM-DD HH:MM - {adaptation} -->

## 2026-02-22 14:00 - Scrum自己導入

**Trigger**: ステークホルダーから「自分で定義したワークフローに従えていない」と指摘
**Change**: このプロジェクト自身にScrumプロセスを導入。docs/scrum/、エージェント、ルールを設置。

## 2026-02-22 19:20 - SKILL.md セットアップ手順のギャップ修正 (タイムスタンプ修正済み: 旧 16:30 -> 19:20)

**Trigger**: Sprint 3 テスト中に Dev が SKILL.md と実際の references/ 内容の不整合を発見（2026-02-22 19:15）。3点のギャップ: (1) role-interactions.md が Step 2 logs リストから漏れ、(2) scrum-role-separation.md が Step 2 Rules リストから漏れ、(3) DoD テンプレートのテック環境適応例が不足。
**Change**: SKILL.md Step 2 に role-interactions.md と scrum-role-separation.md を追加。DoD テンプレートの Testing プレースホルダーに具体的な検出パターン例（pytest, jest, cargo test, ruff, eslint）を追記。修正完了は 2026-02-22 19:20。

## 2026-02-23 00:20 - Sprint 4 Retrospective 改善アクション (SM)

**Trigger**: Sprint 4 Review でステークホルダーから「報告がわかりづらい」フィードバック（P7 として backlog に追加済み）
**Change**:
1. scrum-master.md の Retrospective Record Format を改善: 「価値」フィールド、改善追跡テーブル、フォーマット原則を追加
2. Sprint 4 アーカイブを SM として実動作で作成（docs/scrum/sprints/2026-02-23_sprint-004/）-- 3スプリント分のアーカイブ連鎖未実行問題を完全解消
3. current.md をリセット（次 Sprint Planning の起動点を確立）

## 2026-02-23 -- Sprint 11 Retrospective: ルールファイル上流統合フロー確立 (SM)

**Trigger**: Sprint 11 で `/scrum update` 実行時に scrum-principles.md, scrum-values.md, scrum-role-separation.md の3ファイルからプロジェクト固有のカスタマイズが削除された。Sprint 5-7 で追加された改善がテンプレートに上流統合されていなかったことが根本原因。
**Change**:
1. テンプレート3ファイル（references/rules/scrum-*.md）に削除されたコンテンツを統合
2. プロジェクトファイル（.claude/rules/scrum-*.md）を復元
3. SKILL.md の Customization Preservation > Rules ポリシーに上流統合フローの注記を追加
4. failures.md にインシデントを記録

## 2026-02-22 22:00 - Sprint 3 Retrospective 改善アクション (SM)

**Trigger**: Sprint 3 Retro で以下3点を検出: (1) current.md Item 2 Status が PO Review 判定と不整合、(2) adaptations.md タイムスタンプ誤記、(3) DoD 変更が PO によって先行実施（SM 領域越境）
**Change**:
1. current.md Item 2 Status に PO Review 判定反映済みの注記を追加
2. adaptations.md の「SKILL.md ギャップ修正」タイムスタンプを修正（旧 16:30 -> 19:20）
3. role-interactions.md に DoD ロール境界事象を記録（事実として、是正不要）
4. Sprint 3 アーカイブを作成し current.md をリセット（3スプリント分のアーカイブ欠如を解消）

## 2026-02-23 -- Sprint 12 Retrospective: SM テンプレート上流統合 (SM)

**Trigger**: Sprint 12 Retro で安定期改善発見レンズ (Template Drift) を適用した結果、`scrum-master.md` テンプレートにプロジェクト固有の改善（Sprint 4 Retro 由来の改善追跡テーブル、フォーマット原則、Sprint archival 責務行）が未統合であることを検出。Sprint 11 でルールファイル3点の上流統合は完了していたが、エージェント定義は対象外だった。
**Change**:
1. `skills/scrum/references/agents/scrum-master.md` テンプレートに Sprint archival 責務行、改善追跡テーブル、フォーマット原則、Metrics 詳細化を上流統合
2. Sprint 12 アーカイブを作成（docs/scrum/sprints/2026-02-23_sprint-012/）
3. current.md をリセット

## 2026-02-23 -- Sprint 13 Retrospective: DoD テンプレート Transparency セクション上流統合 (SM)

**Trigger**: Sprint 13 Retro で安定期改善発見レンズ (DoD Evolution) を適用した結果、DoD テンプレートの Transparency セクション（2行の曖昧な表現）がプロジェクト側（6項目の具体的チェック項目、Sprint 2-3 由来）と大きく乖離していることを検出。Sprint 11-13 でエージェント定義とルールファイルの上流統合を完了していたが、DoD テンプレートは対象外だった。
**Change**:
1. `skills/scrum/references/templates/definition-of-done.md` の Transparency セクションを2行から6行に拡充（VCS コミット確認、全変更コミット確認、PR 作成/更新、Sprint ログ更新、failures.md 記録、adaptations.md 記録）
2. Sprint 13 アーカイブを作成（docs/scrum/sprints/2026-02-23_sprint-013/）
3. current.md をリセット
