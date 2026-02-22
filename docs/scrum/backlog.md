# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

**Rule:** The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next.

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P22] Heartbeat パターンの調査・検討

**As** a stakeholder, **I want** OpenClaw 等で検討されている heartbeat パターンがこのスキルに適用可能か調査されている, **so that** 定期的な自動検査やプロセス駆動の新しいアプローチを必要に応じて取り入れられる。

**Acceptance Criteria:**
- [ ] Heartbeat パターンの概要と主要な実装例が `docs/scrum/logs/decisions.md` にリサーチ結果として記録されている
- [ ] P19（検査チェックポイント）の結果を踏まえ、heartbeat が「検査の自動トリガー」として Scrum スキルに付加価値を持つかが評価されている
- [ ] Scrum スキルへの適用可能性が評価されている（適用する/しない/別スキルにする、の判断と根拠）
- [ ] 適用する場合の具体的な設計案がある、または別スキルとして分離する理由が記録されている

**Notes:** ステークホルダーは「これ自体はこのプロジェクトで実装するというよりは別スキルかもしれない」と言及。リサーチ・調査アイテムとして扱い、実装判断はリサーチ結果に基づいて行う。P19（検査チェックポイント）が Sprint 11 で完了しており、Daily Scrum と Sprint Review に構造化された検査ステップが導入済み。heartbeat がこれらに追加の価値を持つかどうかがリサーチの焦点になる。

**Dependencies:** P19 完了済み -- リサーチの判断材料が揃っている。独立して着手可能。

---

### [P28] エージェント定義テンプレートの上流統合（Developer/PO）

**As** a stakeholder, **I want** Developer と PO エージェント定義のプロジェクト固有改善がテンプレートに上流統合されている, **so that** `/scrum update` 実行時にこれらの改善が新規プロジェクトにも適用され、テンプレートとプロジェクト間の乖離が蓄積しない。

**Acceptance Criteria:**
- [ ] Developer テンプレート (`references/agents/scrum-developer.md`) にプロジェクト側の Scrum Values セクションが統合されている
- [ ] PO テンプレート (`references/agents/scrum-product-owner.md`) にプロジェクト側の Environment セクションが統合されている（汎用化した形で）
- [ ] 統合後、プロジェクトエージェント定義とテンプレートの diff が「プロジェクト固有の具体例のみ」になっている

**Notes:** Sprint 12 Retro で Template Drift レンズにより検出。SM テンプレートは Sprint 12 で統合済み。Developer/PO が残存。

**Dependencies:** なし（独立して着手可能）

---

## Item Dependency Map

```
P22 (Heartbeat 調査) ← 独立（P19 完了済みでリサーチ材料が揃っている）
P28 (Dev/PO テンプレート上流統合) ← 独立（Sprint 12 Retro で検出）
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
### [P23] `/scrum update` CLAUDE.md 動作検証 -- DONE (Sprint 11)
### [P24] バージョンバンプ運用の確立 -- DONE (Sprint 11)
### [P25] `/scrum update` カスタマイズ保持検証 -- DONE (Sprint 12)
### [P26] レトロスペクティブ品質の安定化ガイドライン -- DONE (Sprint 12)
### [P27] Sprint 中リアルタイム問題検出の改善 -- DONE (Sprint 12)
