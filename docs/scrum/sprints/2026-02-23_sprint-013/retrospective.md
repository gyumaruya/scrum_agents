# Sprint 13 Retrospective

## Sprint Goal
Heartbeat パターンの適用判断を確定し、テンプレートの完全性を確保する

## Outcome
achieved (全2アイテム完了: P22, P28)

## Sprint 12 -> 13 改善追跡（前スプリントからの継続課題）

| 課題 | Sprint 13 での対応 | 結果 |
|------|---------------------|------|
| Template Drift (Dev/PO エージェント定義未統合) | P28 で Developer/PO テンプレートを上流統合。3エージェント全てテンプレートと完全一致を達成 | 完了 -- Sprint 12 で SM、Sprint 13 で Dev/PO を統合し、エージェント定義の Template Drift を完全解消 |
| P27 実効性検証（定義と実行が同一 Sprint の問題） | Sprint 13 では failures.md/adaptations.md に新規エントリがゼロ。問題が発生しなかったため P27 の仕組みが発動する機会がなかった | 実証不可 -- P27 の実効性は問題が発生する Sprint で初めて検証可能。課題として残存するが、仕組み自体に欠陥がある証拠はない |

## What Went Well

- **P28: エージェント定義テンプレート上流統合の完結**: Sprint 11 でルールファイル3点、Sprint 12 で SM エージェント定義、Sprint 13 で Developer/PO エージェント定義を上流統合。3スプリントにわたる段階的な統合が完了し、全6ファイル（ルール3 + エージェント3）がテンプレートとプロジェクトで完全一致を達成した（`diff` 出力ゼロ）。
  --> Sprint 11 の `/scrum update` データ喪失インシデントを根本原因として、テンプレートとプロジェクトの乖離を構造的に解消した。新規プロジェクトが `/scrum install` 時に Sprint 2-12 の教訓を最初から享受できる。

- **P22: リサーチアイテムの判断品質が高い**: Heartbeat パターンの調査で「Scrum スキルには組み込まない。別スキルとして分離が適切」と明確に判断し、5つの根拠（アーキテクチャ不一致、イベント駆動 vs 時間駆動、既存メカニズムの十分性、ステークホルダーの示唆との一致、関心の分離）を decisions.md に記録した（decisions.md 2026-02-23 P22 エントリ）。将来の連携設計案まで含め、「やらない判断」の品質が高い。
  --> リサーチアイテムの AC 定義（概要 + 評価 + 判断 + 根拠）が効果的に機能し、曖昧な結論を防いだ。今後のリサーチアイテムの参考モデルになる。

- **Sprint の効率性が向上**: Sprint 13 は2アイテムを約35分で完了（current.md 02:00-02:35）。Planning -> Implementation -> DoD Self-Inspection の流れがスムーズで、手戻りがなかった。
  --> DoD Self-Inspection（P19）が定着し、Review 前に品質を確保する文化が機能している。

## What To Improve

**（安定期改善発見レンズ適用結果 -- Sprint 12 では Template Drift と Ceremony Quality の2レンズを使用。今回は残り4レンズを重点分析）**

- **DoD Evolution（DoD の進化）: Transparency セクションの6項目がテンプレートに未統合**: プロジェクト DoD の Transparency セクションは Sprint 2-3 の教訓を反映して6項目に拡充されているが、テンプレートは「Changes are documented」「Stakeholder can understand what was delivered」の2行のまま。新規プロジェクトがこの教訓を受け取れない状態だった。
  - テンプレート: `skills/scrum/references/templates/definition-of-done.md` 40-43行目
  - プロジェクト: `docs/scrum/definition-of-done.md` 38-43行目
  --> 提案: テンプレートの Transparency セクションにプロジェクトの6項目を汎用化して統合する。「git」を「VCS」に、日本語を英語に。

- **Efficiency（効率）: Product Backlog の Items セクションが Sprint 13 完了後に P22, P28 のみ残存（両方 Done）**: backlog.md の Items セクションには P22 と P28 が残っているが、Sprint 13 Review で両方 approved であり Done セクションに移動すべき状態。バックログが実質的に空であり、次の Sprint Planning 時に PO が新しいアイテムを生成するか、Product Goal の達成状況を評価する必要がある。
  --> これは SM の直接的な改善対象ではなく PO の判断領域だが、プロセスの観点から「バックログが空の場合の行動ガイド」が CLAUDE.md と scrum-principles.md に定義されている（「When Backlog Is Empty」セクション）ことを確認。既存の仕組みで対応可能。

- **Agent Collaboration（エージェント連携）: Sprint 13 の role-interactions.md エントリが PO Review の1件のみ**: Sprint 3 では7件以上のクロスロール記録があったのに対し、Sprint 13 は1件。スコープが小さいため自然ではあるが、SM の Planning プロセス検査エントリが記録されていない。Planning 時の SM 検査は sprint-retrospective.md の Role Assignment で SM に明記されているものではないが、Sprint 4 では実施されていた。
  --> SM の Planning 検査記録は Sprint 規模に応じて省略してよいか、毎回記録すべきかのガイドラインが未定義。ただし、これは軽微な問題であり、Sprint 規模が小さい場合に形式的な記録を強制するとセレモニーの形骸化につながるリスクがある。現状維持が適切。

- **Template Drift（テンプレート乖離）の継続監視**: 前回の重点レンズ。Sprint 13 でエージェント定義の Template Drift を完全解消。ルールファイルは Sprint 11 で解消済み。残存する唯一の意図的な乖離は DoD のプロジェクト固有カスタマイズ（Testing セクション、Quality セクションの具体化）のみ。
  --> Template Drift は現時点で完全に管理下にある。

- **Ceremony Quality（セレモニー品質）**: Sprint 12 で検出した「P27 実効性未検証」は Sprint 13 でも問題が発生しなかったため実証不可。仕組み自体に欠陥がある証拠はなく、自然な問題発生を待つのが適切。
  --> 持ち越しだが、問題の不在は仕組みの成功の可能性もある。次 Sprint で監視継続。

## Action Items (Changes Made)

- Changed `skills/scrum/references/templates/definition-of-done.md`: Transparency セクションをプロジェクトの6項目に合わせて上流統合 -- Sprint 13 Retro の DoD Evolution レンズにより、テンプレートの Transparency セクション（2行）がプロジェクト（6行、Sprint 2-3 由来）と大きく乖離していることを検出。テンプレートに VCS コミット確認、全変更コミット確認、PR 作成/更新、Sprint ログ更新、failures.md 記録確認、adaptations.md 記録確認の6項目を統合。
  --> **価値**: 新規プロジェクトが `/scrum install` 時にこの DoD テンプレートを受け取ると、Sprint 2-3 で発見された「コミット漏れ」「ログ記録漏れ」の教訓が最初から組み込まれている。プロジェクトごとに同じ失敗を繰り返す必要がなくなる。

## Metrics

- Items planned: 2, completed: 2
- Blockers resolved: 0
- Cross-role interactions: 1 (role-interactions.md Sprint 13 エントリ -- PO Review)
- New backlog items from Review: 0
- Sprint duration: 2026-02-23 02:00 ~ 02:35 (35分)
- Template drift status: エージェント定義3/3 完全一致、ルール3/3 完全一致、DoD テンプレート Transparency を上流統合

## P26 自己検証（安定期改善発見レンズの2回目適用）

本レトロは Sprint 12 で導入した P26 の仕組み（安定期改善発見レンズ）の2回目の適用である:

- **使用したレンズ**: 全6レンズ（Sprint 12 では Template Drift + Ceremony Quality の2レンズ。今回は残り4レンズを重点分析）
- **DoD Evolution レンズの効果**: テンプレートの DoD Transparency セクションがプロジェクト側と大きく乖離していることを検出。Sprint 11 以降のエージェント定義・ルールファイルの上流統合では対象外だった DoD テンプレートの改善を実現。
- **6レンズの網羅性**: 2回の Retro で全6レンズを一巡。Template Drift（Sprint 12）、Ceremony Quality（Sprint 12-13）、DoD Evolution（Sprint 13）で具体的な知見が得られ、Efficiency/Documentation/Agent Collaboration は現状良好と確認。
- **結論**: P26 の仕組みは2回連続で機能。レンズをローテーションすることで「探す場所」が変わり、同じ観点に固定されるリスクを回避できている。
