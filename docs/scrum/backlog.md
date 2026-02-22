# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

**Rule:** The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next.

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P25] `/scrum update` のカスタマイズ保持検証

**As** a stakeholder, **I want** `/scrum update` 実行後にプロジェクト固有のルールカスタマイズが保持されていることが検証されている, **so that** スキル更新時に過去の改善成果が失われるリスクを排除できる。

**Acceptance Criteria:**
- [ ] `/scrum update` を実行し、`.claude/rules/scrum-*.md` の3ファイルでプロジェクト固有のカスタマイズ（Sprint Rules, Courage 追加行, This Project's Adaptations）が保持されていることを確認
- [ ] 更新前後の diff が記録されている（カスタマイズ保持の証跡）
- [ ] Sprint 11 Retro で追加した SKILL.md の上流統合フロー注記が機能していることを確認

**Notes:** Sprint 11 で `/scrum update` 実行時に scrum-principles.md, scrum-values.md, scrum-role-separation.md の3ファイルからプロジェクト固有の改善が削除された（failures.md 参照）。Retro でテンプレートへの上流統合とポリシー注記追加が行われたが、対策が本当に機能するかの実証検証は未実施。再発防止の最終確認。

**Dependencies:** なし（独立して着手可能）

---

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

### [P26] レトロスペクティブ品質の安定化ガイドライン

**As** a stakeholder, **I want** プロセスが安定している時期でもレトロスペクティブが改善の種を見つけ続ける, **so that** 「特に問題なし」で終わる形骸的なレトロが発生せず、継続的改善の文化が維持される。

**Acceptance Criteria:**
- [ ] SM エージェント定義に「安定期でも最低1つの改善提案を出す」ガイドラインが追加されている
- [ ] sprint-retrospective.md に、安定期の改善発見を支援する視点（例: 効率改善、ドキュメント品質、プロセスの摩擦、エージェント間連携の質）が記載されている
- [ ] 過去のレトロ品質差（Sprint 8-10 が簡素 vs Sprint 3-4 が充実）の分析が Sprint ログに記録されている

**Notes:** Sprint 11 Retro の「What To Improve」で指摘。Sprint 8-10 の retrospective.md は「What To Improve: 特になし」のみで、改善の機会を逃している可能性がある。Scrum の「適応」の柱を強化するアイテム。

**Dependencies:** なし（独立して着手可能）

---

### [P27] Sprint 中リアルタイム問題検出の改善

**As** a stakeholder, **I want** Sprint 中に発生した問題がリアルタイムで failures.md/adaptations.md に記録される, **so that** Sprint Review/Retro まで問題が検出されないブラインドスポットが解消される。

**Acceptance Criteria:**
- [ ] Developer エージェント定義に「問題発生時の即時記録」手順が明記されている（現在の DoD 自己検査に加えて）
- [ ] Daily Scrum セレモニー定義に「前回 Daily 以降の failures/adaptations 記録の確認」ステップが追加されている
- [ ] Sprint 11 のルールファイル削除問題のように、Sprint 中に発生した問題が Review まで放置されるパターンを構造的に防止する仕組みになっている

**Notes:** Sprint 11 で `/scrum update` によるルールファイル破損が Sprint 中に発生していたが、Sprint Review/Retro まで検出されなかった。P19 で追加した検査チェックポイントは Sprint 11 自体には適用されなかった（定義と実行が同一 Sprint）。次 Sprint 以降で P19 の仕組みが機能するかの実証を兼ねる。

**Dependencies:** なし（独立して着手可能。P19 の仕組みが既に存在するため、それを補完する位置づけ）

---

## Item Dependency Map

```
P25 (update カスタマイズ保持検証) ← 独立（Sprint 11 Retro 対策の最終確認）
P22 (Heartbeat 調査) ← 独立（P19 完了済みでリサーチ材料が揃っている）
P26 (レトロ品質安定化) ← 独立
P27 (リアルタイム問題検出) ← 独立（P19 を補完）
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
