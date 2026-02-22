# Sprint 12 Retrospective

## Sprint Goal
/scrum update の安全性を実証し、プロセス改善の品質を安定させる

## Outcome
achieved (全3アイテム完了: P25, P26, P27)

## Sprint 11 -> 12 改善追跡（前スプリントからの継続課題）

| 課題 | Sprint 12 での対応 | 結果 |
|------|---------------------|------|
| /scrum update がカスタマイズを削除（Sprint 11 で対策実施） | P25 で実際に update を実行し、テンプレートとプロジェクトファイルの完全一致を diff で実証 | 完了 -- 上流統合フローの有効性を実証的に検証 |
| Sprint 8-10 レトロ品質の低下（安定期の形骸化） | P26 で SM 定義に MANDATORY ガイドライン + sprint-retrospective.md に6項目の改善発見レンズ追加 | 機能 -- 本レトロ自体が初回適用（下記 What To Improve で実証） |
| Sprint 中の問題が Review まで放置 | P27 で Developer 即時記録 + Daily Scrum に Problem Log Review 追加 | 定義完了 -- 次 Sprint での実証待ち |

## What Went Well

- **P25: 「対策したが検証していない」パターンを初めて完全に断ち切った**: Sprint 11 Retro でテンプレートへの上流統合を実施したが、その対策が本当に機能するかは未検証だった。Sprint 12 で実際に `/scrum update` 相当の操作を実行し、Rules 3ファイルがテンプレートとプロジェクトで IDENTICAL であることを diff で証明した（current.md 01:25 ログ）。
  --> Sprint 3 (dogfooding 未完了)、Sprint 8 (grep のみで完了宣言)、Sprint 11 (上流統合後の実証なし) と繰り返してきた「検証不足」パターンに対する構造的な解決。今後の Sprint でも「実証的検証」が標準になる。

- **P26: 過去11スプリント分の品質分析に基づく構造的対策**: Sprint 8-10 の「特になし」パターンを単に指摘するのではなく、Sprint 1-11 全レトロの品質を定量的にテーブル化し（decisions.md 2026-02-23 分析）、安定期の品質低下パターンを特定した上で、SM 定義とセレモニー定義の両方に対策を実装した。
  --> 分析の深さ（11スプリント横断）と対策の具体性（6つの改善発見レンズ）が高い。本レトロ自体が初回の実証対象であり、下記 What To Improve で実際に機能していることを確認。

- **PO Review の品質が一貫して高水準を維持**: role-interactions.md の Sprint 12 Review エントリで、PO が9つの AC すべてを個別に判定し、各アイテムの品質の特徴まで所見に記載している。Sprint 2 から始まった AC 粒度検査が12スプリント連続で機能している。
  --> PO の検査品質がプロセスの自然な一部として定着。P19（検査チェックポイント）の効果が PO 側でも持続的に発現。

## What To Improve

**（安定期改善発見レンズ適用結果）**

- **Template Drift（テンプレート乖離）: エージェント定義3ファイルでプロジェクト固有セクションがテンプレートに未統合**: `diff` の結果、以下の乖離が確認された:
  - `scrum-master.md`: Sprint archival 責務行（40行目）、改善追跡テーブル、フォーマット原則セクション、Metrics 詳細化 -- Sprint 4 Retro で追加した改善がテンプレートに未反映
  - `scrum-developer.md`: Scrum Values セクション（プロジェクト固有）、Sprint 11 example 行（テンプレートにのみ存在、プロジェクトから欠落）
  - `scrum-product-owner.md`: Environment セクション（プロジェクト固有）
  --> Sprint 11 でルールファイル3点の上流統合を完了したが、エージェント定義3点の上流統合が未実施。SKILL.md の Customization Preservation では Agents は「Merge: append project sections」であるため即座にデータ喪失はしないが、テンプレートの進化がプロジェクト側に反映されないリスクがある（scrum-developer.md の Sprint 11 example 行がプロジェクトに存在しない事例が既に発生）。
  --> 提案: Sprint 11 のルールファイルと同様に、エージェント定義のプロジェクト固有改善をテンプレートに上流統合する。SM の Retro チェックリストにエージェント定義の diff も追加する。

- **Ceremony Quality: Sprint 12 中の failures.md/adaptations.md に新規エントリがゼロ**: Sprint 12 の current.md ログには問題が報告されておらず、failures.md/adaptations.md にも Sprint 12 固有のエントリがない。これは「問題がなかった」か「P27 の仕組みがまだ適用されていなかった」のいずれか。Sprint 12 自体が P27 を定義した Sprint であり、定義者と実行者が同一 Sprint であるため、P19 と同じ「自分で定義した仕組みを自分に適用できない」構造的限界がある。
  --> P27 の実効性は Sprint 13 以降で初めて検証可能。次 Sprint の Retro で P27 の効果を追跡すべき。

## Action Items (Changes Made)

- Changed `skills/scrum/references/agents/scrum-master.md`: テンプレートに Sprint archival 責務行と改善追跡テーブル・フォーマット原則を上流統合 -- Sprint 12 Retro の Template Drift レンズで、プロジェクト固有の SM 改善（Sprint 4 Retro 由来）がテンプレートに未反映であることを検出。エージェント定義でも Sprint 11 のルールファイル上流統合と同じ問題が進行していた。
  --> **価値**: 今後 `/scrum update` を実行した際に、SM の改善追跡テーブルやフォーマット原則がテンプレートから提供される。新規プロジェクトが Sprint 4 の教訓を最初から享受できる。

## Metrics

- Items planned: 3, completed: 3
- Blockers resolved: 0
- Cross-role interactions: 1 (role-interactions.md Sprint 12 エントリ -- PO Review)
- New backlog items from Review: 0
- Sprint duration: 2026-02-23 01:00 ~ 01:45 (45分)
- Template drift detected: Agent 定義3ファイルに乖離あり（SM を本 Retro で解消、Developer/PO は次 Sprint 候補）

## P26 自己検証

本レトロは Sprint 12 で導入した P26 の仕組み（安定期改善発見レンズ）を初めて適用した実例である:

- **使用したレンズ**: Template Drift、Ceremony Quality
- **Template Drift レンズの効果**: ルールファイルの上流統合は Sprint 11 で完了していたが、エージェント定義の乖離を見落としていた。このレンズがなければ「全て順調」で終わっていた可能性が高い。
- **結論**: P26 の仕組みは機能している。6つのレンズのうち2つで具体的な知見が得られ、1つの concrete change につながった。「Nothing to improve is NEVER acceptable」の原則が実効的に働いた。
