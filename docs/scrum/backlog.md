# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

**Rule:** The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next.

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P15] セレモニー構造の一貫性修正

**価値**: 自動連鎖フローの信頼性を確保する。構造が不揃いだとエージェントが次のステップを見失う。

**AC**:
- [ ] `backlog-refinement.md` に `## Auto-next` セクションを追加（アクティブSprint中→開発継続、Sprint外→バックログにアイテムがあればPlanning開始）
- [ ] `sprint-review.md` に明示的な `## Output` セクションを追加
- [ ] 全5セレモニーが Role Assignment / Input / Process / Output / Auto-next の統一構造を持つ

**根拠**: スキル監査で発見。backlog-refinement.md だけ Auto-next がなく、自動連鎖が途切れる。sprint-review.md は Output がプロセスに埋もれている。

---

### [P16] 別プロジェクトでのE2E統合テスト

**価値**: スキルが「本当に動く」ことを証明する。grep ではなく実際のエージェント動作で検証。

**AC**:
- [ ] `/tmp/` に新規プロジェクトを作成し `/scrum` でセットアップ実行
- [ ] セットアップ後の全ファイルが正しく生成されていることを確認
- [ ] Sprint Planning → Dev → Review → Retro → 次Sprint の自動連鎖が途切れずに完走
- [ ] `/scrum update` がバージョン差異を正しく検出し、ファイルを更新
- [ ] CLAUDE.md にScrumセクションが正しく追加される

**根拠**: Sprint 8 レトロで「grep でファイル確認だけでテスト完了と宣言」が失敗として記録。実動作検証が必要。

---

### [P17] DoD テック環境適応の具体例追加

**価値**: 新規プロジェクトへのセットアップ体験を改善。プレースホルダーの置換方法が曖昧だとセットアップが不完全になる。

**AC**:
- [ ] `definition-of-done.md` テンプレートの `{Adapt to project}` プレースホルダーに、SKILL.md 側で具体的な置換手順を記載
- [ ] Python (pytest/ruff)、Node.js (jest/eslint)、Rust (cargo test)、フレームワークなし の4パターン例示
- [ ] セットアップ Step 2 で環境検出結果と DoD 適応をリンクする手順を明記

**根拠**: failures.md #3「DoD テック環境適応の手順が曖昧」が未解決。

---

### [P18] エージェント定義のクリーンアップ

**価値**: エージェント定義の可読性と保守性を向上。

**AC**:
- [ ] `scrum-master.md` の埋め込みレトロスペクティブテンプレートを整理（テンプレート部分を明確にマークまたは分離）
- [ ] `scrum-developer.md` の Scrum Values 重複セクションを削除（`scrum-values.md` ルールで既にカバー）
- [ ] 全3エージェントの構造が統一されていることを確認

**根拠**: スキル監査で発見。機能への影響は軽微だが、スキルパッケージの品質基準として対応すべき。

---

## Done

### [P1] ロール分離 -- DONE (Sprint 4)
### [P2] Scrumプロセス動作 -- DONE (Sprint 4-5)
### [P3] セレモニー定義補強 -- DONE (Sprint 5)
### [P4] エージェント定義 -- DONE (Sprint 4)
### [P5] インストール確実化 -- DONE (Sprint 5)
### [P6] Retro改善 -- DONE (Sprint 5)
### [P7] 報告わかりやすく -- DONE (Sprint 5)
### [P8] エージェント積極性 -- DONE (Sprint 5)
### [P9] アップデート機能 -- DONE (Sprint 6)
### [P10] Scrum Guide整合（Sprintルール） -- DONE (Sprint 7)
### [P11] Sprint Review Working Session -- DONE (Sprint 7)
### [P12] SM役割拡張 -- DONE (Sprint 7)
### [P13] Daily/Refinement修正 -- DONE (Sprint 7)
### [P14] セレモニー自動連鎖の動作検証 -- DONE (Sprint 8)
