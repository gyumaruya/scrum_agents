# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

**Rule:** The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next.

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P19] Sprint 中の検査（Inspection）チェックポイントの強制

**As** a stakeholder, **I want** Sprint 中にインクリメントが DoD に対して確実に検査される仕組みがある, **so that** 検査漏れによる品質低下やプロセスの形骸化を防げる。

**Acceptance Criteria:**
- [ ] 各 Sprint Backlog アイテムの完了時に DoD チェックを実行するステップがセレモニー定義（daily-scrum.md または新規定義）に明記されている
- [ ] Developer エージェント定義に「アイテム完了時の DoD 自己検査」が責務として記載されている
- [ ] Sprint Review の前に、すべてのアイテムが DoD に対して検査済みであることが確認できる構造になっている
- [ ] 検査結果が current.md のログに記録される

**Notes:** 現状、Sprint Review での PO 受入検査は定義されているが、Sprint 中にアイテム単位で DoD を確認するプロセスが欠けている。Sprint 3 で「current.md の Status が done のまま AC が needs-revision」という問題が繰り返し発生した根本原因に対応する。

**Dependencies:** なし（独立して着手可能）

---

### [P20] セッション間コンテキスト継続性の確保

**As** a stakeholder, **I want** セッションをまたいでも前の Sprint の状態や経緯が確実に引き継がれる, **so that** コンテキストロスによるやり直しや方向性のズレが起きない。

**Acceptance Criteria:**
- [ ] セッション開始時に読み込むべきファイル一覧と順序が SKILL.md または CLAUDE.md の Scrum セクションに明記されている
- [ ] current.md にセッション間の引き継ぎに十分な「Sprint Summary」セクション（Goal、進捗、直近の判断、次のアクション）が定義されている
- [ ] エージェント定義（PO/SM/Dev）に「セッション開始時のコンテキストロード手順」が記載されている
- [ ] 別プロジェクトへのインストール後、セッションを再起動してもコンテキストが維持されることが検証されている

**Notes:** 現状、CLAUDE.md に Artifact 一覧はあるが、「セッション開始時に何を読んで、どう状況を把握するか」の手順が明示されていない。エージェントがセッション開始直後に current.md を読まずに動き出すと、前回の文脈が失われる。

**Dependencies:** なし（独立して着手可能）

---

### [P21] バックログアイテム独立性のガイドライン

**As** a stakeholder, **I want** PO が複数の問題を受け取ったときにそれぞれ独立したアイテムとして分解する, **so that** 各アイテムが独立してデリバリー・検査可能になり、価値の流れが滞らない。

**Acceptance Criteria:**
- [ ] PO エージェント定義に「アイテム独立性の原則」セクションが追加されている（INVEST 原則の I: Independent を参照）
- [ ] 独立性判断の具体的なガイドラインが記載されている（例: 別々にデリバリーできるか、別々に検査できるか、片方が遅れてももう片方に影響しないか）
- [ ] backlog-refinement.md に「アイテム分割の確認」ステップが追加されている

**Notes:** ステークホルダーから「問題点を同時に指摘すると全部同じ Item にするよね。Item の相互関係とか考えて、できる限り独立させるべき」と明確に指摘されている。PO エージェントの振る舞いをスキルレベルで改善する。

**Dependencies:** なし（独立して着手可能）

---

### [P22] Heartbeat パターンの調査・検討

**As** a stakeholder, **I want** OpenClaw 等で検討されている heartbeat パターンがこのスキルに適用可能か調査されている, **so that** 定期的な自動検査やプロセス駆動の新しいアプローチを必要に応じて取り入れられる。

**Acceptance Criteria:**
- [ ] Heartbeat パターンの概要と主要な実装例が `docs/scrum/logs/decisions.md` にリサーチ結果として記録されている
- [ ] Scrum スキルへの適用可能性が評価されている（適用する/しない/別スキルにする、の判断と根拠）
- [ ] 適用する場合の具体的な設計案がある、または別スキルとして分離する理由が記録されている

**Notes:** ステークホルダーは「これ自体はこのプロジェクトで実装するというよりは別スキルかもしれない」と言及。リサーチ・調査アイテムとして扱い、実装判断はリサーチ結果に基づいて行う。

**Dependencies:** P19（検査チェックポイント）の結果を踏まえると、heartbeat が検査の自動トリガーとして有用かどうかの判断がしやすくなる。ただし、P19 を待たずにリサーチは開始可能。

---

### [P23] `/scrum update` の CLAUDE.md 更新動作検証

**As** a stakeholder, **I want** `/scrum update` が CLAUDE.md を正しく更新していることが検証されている, **so that** スキルバージョンアップ時に新しいルールやアンチパターンが確実に反映される。

**Acceptance Criteria:**
- [ ] `/scrum update` を実行し、CLAUDE.md の Scrum セクションが最新の SKILL.md 定義と一致することが確認されている
- [ ] 更新前後の差分が記録されている（変更あり/なしの両ケース）
- [ ] 既存の CLAUDE.md 非 Scrum セクションが破壊されないことが確認されている

**Notes:** SKILL.md の Update セクション (Line 336-396) と Setup Step 5 (Line 285-293) に CLAUDE.md 更新の定義は存在する。定義の有無ではなく、実際の動作が定義通りかの検証が必要。軽量な検証アイテム。

**Dependencies:** なし（独立して着手可能）

---

## Item Dependency Map

```
P19 (検査チェックポイント) ──→ P22 (Heartbeat 調査) に情報提供
         |                              |
         |                              v
         |                     判断: 別スキルか統合か
         |
P20 (継続性) ← 独立
P21 (アイテム独立性) ← 独立
P23 (update 検証) ← 独立
```

全アイテムは独立して着手可能だが、P22 は P19 の結果を参考にすると判断の質が上がる。

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
