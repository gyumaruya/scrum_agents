# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

**Rule:** The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next.

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P29] v1.3.1 フレッシュプロジェクト E2E 検証

**As** a stakeholder, **I want** 最新版スキル (v1.3.1) が新規プロジェクトで正しく動作することが検証されている, **so that** パッケージの配布品質に自信を持てる。

**Acceptance Criteria:**
- [ ] 一時ディレクトリで新規プロジェクトを作成し、`/scrum install` でスキルをインストール
- [ ] `/scrum` (初回セットアップ) が正しくファイル構造を生成する（docs/scrum/, .claude/agents/, .claude/rules/）
- [ ] 生成されたファイルに Sprint 11-13 の改善が反映されている（DoD Versioning セクション、Developer の Real-Time Problem Recording、SM の Retrospective Quality、PO の Environment セクション等）
- [ ] `/scrum update` が正しくバージョン管理を行う（.scrum-version の作成・更新）

**Notes:** 前回の E2E テストは Sprint 9 (P16)。v1.0.0 時点。以降 13 のアイテムが完了し v1.3.1 に到達。最終品質確認として実施。

**Dependencies:** なし

---

### [P30] SKILL.md 正確性監査

**As** a stakeholder, **I want** SKILL.md が現在の全機能を正確に記述している, **so that** スキルの主要定義ファイルが信頼できるドキュメントとして機能する。

**Acceptance Criteria:**
- [ ] SKILL.md の各セクション（Version Check, Setup, Update, Session Continuity, Anti-Patterns）が実際の動作と一致していることを確認
- [ ] Sprint 11-13 で追加された機能（Session Continuity, Customization Preservation の upstream 注記等）が SKILL.md に正確に記述されている
- [ ] 不正確・古い記述があれば修正されている

**Notes:** SKILL.md は 465 行を超える大きなファイル。13 Sprint にわたる改善で段階的に拡張されてきたため、全体の整合性を確認する価値がある。

**Dependencies:** なし

---

## Item Dependency Map

```
P29 (E2E 検証) ← 独立
P30 (SKILL.md 監査) ← 独立
```

全アイテムは独立して着手・デリバリー・検査可能。

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
### [P15] セレモニー構造の一貫性修正 -- DONE (Sprint 9)
### [P16] 別プロジェクトでのE2E統合テスト -- DONE (Sprint 9)
### [P17] DoD テック環境適応の具体例追加 -- DONE (Sprint 9)
### [P18] エージェント定義のクリーンアップ -- DONE (Sprint 10)
### [P19] Sprint 中の検査チェックポイントの強制 -- DONE (Sprint 11)
### [P20] セッション間コンテキスト継続性の確保 -- DONE (Sprint 11)
### [P21] バックログアイテム独立性のガイドライン -- DONE (Sprint 11)
### [P22] Heartbeat パターンの調査・検討 -- DONE (Sprint 13)
### [P23] `/scrum update` CLAUDE.md 動作検証 -- DONE (Sprint 11)
### [P24] バージョンバンプ運用の確立 -- DONE (Sprint 11)
### [P25] `/scrum update` カスタマイズ保持検証 -- DONE (Sprint 12)
### [P26] レトロスペクティブ品質の安定化ガイドライン -- DONE (Sprint 12)
### [P27] Sprint 中リアルタイム問題検出の改善 -- DONE (Sprint 12)
### [P28] エージェント定義テンプレート上流統合 -- DONE (Sprint 13)
