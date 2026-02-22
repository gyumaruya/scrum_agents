# Scrum Guide 2020 vs. Current Skill Package: Gap Analysis

**Date**: 2026-02-22
**Analyst**: Subagent (claude-sonnet-4-6)
**Method**: Gemini CLI research (Scrum Guide 2020) + manual comparison with skill files

---

## Files Analyzed

### Skill Package
- `skills/scrum/SKILL.md`
- `skills/scrum/references/ceremonies/sprint-planning.md`
- `skills/scrum/references/ceremonies/daily-scrum.md`
- `skills/scrum/references/ceremonies/sprint-review.md`
- `skills/scrum/references/ceremonies/sprint-retrospective.md`
- `skills/scrum/references/ceremonies/backlog-refinement.md`
- `skills/scrum/references/agents/scrum-product-owner.md`
- `skills/scrum/references/agents/scrum-master.md`
- `skills/scrum/references/agents/scrum-developer.md`
- `skills/scrum/references/templates/definition-of-done.md`
- `.claude/rules/scrum-principles.md`
- `.claude/rules/scrum-values.md`

### Scrum Guide 2020 (via Gemini)
Source: scrumguides.org (official 2020 edition)

---

## Critical Gaps (Scrum Guide に明記されているが欠落)

### 1. Sprint 中断・キャンセル条件の不在
**Guide says**: "A Sprint could be cancelled if the Sprint Goal becomes obsolete. Only the Product Owner has the authority to cancel the Sprint."
**Current state**: Sprint キャンセルのルールがどのセレモニーファイルにも記載されていない。`sprint-planning.md` にも `SKILL.md` にも Sprint 中断の手順がない。
**Impact**: スプリントゴールが陳腐化した場合に何をすべきか不明瞭。

### 2. Sprint 中の制約ルール（4つの禁止事項）が未定義
**Guide says**: During the Sprint:
- No changes are made that would endanger the Sprint Goal
- Quality does not decrease
- The Product Backlog is refined as needed
- Scope may be clarified and re-negotiated with the Product Owner as more is learned

**Current state**: `sprint-planning.md` や `SKILL.md` にスプリント中の制約ルールが記載されていない。Dev エージェントには「Sprint Backlog only」の言及があるが、網羅的ではない。

### 3. Product Goal の「一度に一つ」ルール未定義
**Guide says**: "A product has one Product Goal at a time." / "The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next."
**Current state**: `product-backlog.md` テンプレートに Product Goal 欄はあるが、「一度に一つ」「完了または放棄してから次へ」というルールが明示されていない。

### 4. Sprint Backlog は Dev が所有するという明示がない
**Guide says**: "The Sprint Backlog is a plan by and for the Developers."
**Current state**: `sprint-planning.md` の Process では Dev が Sprint Backlog を作成するとあるが、「Dev の計画（Dev by and for）」という所有権の明示がない。役割分離ルールの観点から重要。

### 5. Increment の「複数作成可能」ルールが未記載
**Guide says**: "Multiple Increments may be created within a Sprint."
**Current state**: どのファイルにも複数インクリメントの概念がない。単一の「increment ready」トリガーとして扱われている。

### 6. Daily Scrum の「Developers のみ参加」ルールが曖昧
**Guide says**: "The Daily Scrum is a 15-minute event for the Developers of the Scrum Team. If the Product Owner or Scrum Master are actively working on items in the Sprint Backlog, they participate as Developers."
**Current state**: `daily-scrum.md` の Role Assignment テーブルには SM と PO を含むが、「PO/SM が Sprint Backlog アイテムに取り組んでいる場合のみ Developer として参加」という条件が記載されていない。

### 7. Sprint Review は「Working Session」であるべき（プレゼン禁止）
**Guide says**: "The Sprint Review is a working session and the Scrum Team should avoid limiting it to a presentation."
**Current state**: `sprint-review.md` の Step 3 は「Present to Stakeholder」という構成で、プレゼンテーション形式に見える。Working Session（協働）の側面が弱い。ステークホルダーとの協働による未来のバックログ適応という本来の目的が薄い。

### 8. Sprint Review での「Product Backlog 適応」が弱い
**Guide says**: "The Scrum Team presents the results of their work to key stakeholders and progress toward the Product Goal is discussed." / Sprint Review の成果として Product Backlog を適応させる。
**Current state**: `sprint-review.md` の Step 5 でバックログ更新はあるが、「Product Goal に向けた進捗」の議論と、将来の計画に向けた Product Backlog 適応という側面が弱い。

### 9. Sprint Retrospective の「インクリメントに追加できる」ルール未記載
**Guide says**: "The most impactful improvements are addressed as soon as possible. They may even be added to the Sprint Backlog for the next Sprint."
**Current state**: `sprint-retrospective.md` では「1つの具体的な変更を行う」とあり、ファイル変更にフォーカスしているが、改善を次の Sprint Backlog に追加する選択肢が示されていない。

### 10. Timebox の具体的な時間指定が不明瞭
**Guide says**:
- Sprint Planning: max 8 hours (1-month Sprint)
- Daily Scrum: 15 minutes
- Sprint Review: max 4 hours (1-month Sprint)
- Sprint Retrospective: max 3 hours (1-month Sprint)

**Current state**: `daily-scrum.md` にも、その他のセレモニーファイルにも Timebox の時間指定がない。AI エージェント向けの適応として意図的に省略しているかもしれないが、明示的な理由がない。

---

## Interpretation Issues (解釈の違い)

### 1. Sprint Planning の「Sprint Goal は全チームで作成」vs「PO が提案」
**Guide says**: "The whole Scrum Team then collaborates on defining a Sprint Goal." / "The Product Owner proposes how the product could increase its value and utility in the current Sprint."
**Our interpretation**: `sprint-planning.md` では PO がゴールを提案 → Dev が実現可能性を評価 → SM が検査、という流れ。これはガイドの「PO が提案し、チームで確定する」に概ね沿っているが、「全チームで作成」の協働感が弱い。ただし AI エージェント環境での適応として許容範囲内。

### 2. Scrum Master の役割定義が「プロセス改善特化」に偏りすぎ
**Guide says**: SM は次の3つを担う:
- Scrum Team への奉仕（コーチング、自己管理支援、障害除去）
- Product Owner への奉仕（プロダクトゴール定義支援、ステークホルダーコラボ促進）
- 組織への奉仕（Scrum 導入リード、障壁除去）

**Our interpretation**: `scrum-master.md` は「プロセス改善と組織ファイル変更」に特化している。PO への奉仕（プロダクトゴール支援）と組織への奉仕（Scrum 導入）の側面が欠落している。

### 3. Retrospective の「個人、インタラクション、プロセス、ツール、DoD」の検査スコープ
**Guide says**: "The Scrum Team inspects how the last Sprint went with regards to individuals, interactions, processes, tools, and their Definition of Done."
**Our interpretation**: `sprint-retrospective.md` の Step 1 (Gather Data) はファイル読み込みに集中しており、「個人・インタラクション」の観点が薄い。AI エージェント文脈では「エージェント間のインタラクション品質」として読み替えられるが、明示されていない。

### 4. Product Owner の「Backlog Management」説明方法
**Guide says**: PO は「Backlog items を作成し、明確にコミュニケーションする」責任を持つ。
**Our interpretation**: `scrum-product-owner.md` では「受け取って翻訳する」という受動的描写が強い。ガイドは「PO が積極的にアイテムを作成・管理する」という能動的な責任を強調している。ただし Mindset セクションの「Proactive Value Discovery」で部分的にカバーされている。

### 5. Backlog Refinement の位置づけ
**Guide says**: Backlog Refinement は公式イベント（Ceremony）ではなく、「Sprint 中に発生する継続的な活動」と定義されている。
**Our interpretation**: `SKILL.md` では `/scrum refine` として他の Ceremony と同列に扱われており、独立したコマンドになっている。実際のガイドでは「Product Backlog は Sprint 中に継続的に精緻化される」が正しい。

---

## Intentional Adaptations (AI 向けの意図的な変更、問題なし)

### 1. Daily Scrum のトリガー変更
**Guide**: 毎日 15 分のイベント
**Our adaptation**: 「AI エージェントには Daily という概念より、アイテム完了時や Blocker 発生時にトリガー」
**Rationale**: 合理的。AI エージェントに「1日1回」は意味がなく、イベント駆動が適切。

### 2. Ceremony の自動連鎖
**Guide**: 各セレモニーはチームが手動で開始する
**Our adaptation**: セレモニーが自動的に連鎖する（Sprint Planning → Dev → Review → Retro → 次の Sprint）
**Rationale**: AI エージェント向けの重要な適応。ユーザー負荷を最小化し、Scrum の流れを自動化する設計として優れている。

### 3. Role Separation の強化
**Guide**: 役割分離は定義されているが、エンフォースメントの詳細はない
**Our adaptation**: `scrum-role-separation.md` で詳細な Violation Guard と Interaction Log を定義
**Rationale**: AI エージェントが全役割をこなせる能力を持つため、役割崩壊を防ぐ必要がある。人間チームより厳格なルールが必要であり、適切な適応。

### 4. ファイルベースの透明性
**Guide**: 透明性は「visible to those doing and receiving the work」として定義
**Our adaptation**: `docs/scrum/` ディレクトリ構造で全アーティファクトをファイルとして永続化
**Rationale**: AI エージェントのセッション間記憶がないため、ファイルへの永続化は必須の適応。

### 5. SM による組織ファイル変更権限
**Guide**: SM は「組織の Scrum 導入を支援」するが、具体的なファイル変更権限は未定義
**Our adaptation**: SM エージェントが `.claude/rules/`, `.claude/agents/`, DoD を証拠ベースで変更可能
**Rationale**: AI エージェント組織の継続的改善に必要な適応。

### 6. Timebox の省略
**Guide**: 各イベントに時間制限（8時間、15分、4時間、3時間）
**Our adaptation**: Timebox の時間指定なし（AI エージェントは「時間」の概念が異なる）
**Rationale**: 概ね妥当だが、明示的な理由の記載が推奨される。

---

## Improvement Suggestions

### [HIGH] Sprint キャンセル手順を追加
**Suggestion**: `sprint-planning.md` または `SKILL.md` に Sprint キャンセルの条件（Sprint Goal が陳腐化）と手順（PO のみが決定）を追加する。
**Rationale**: スプリントゴールがビジネス状況の変化で無意味になるケースは実際に起こる。エージェントが何をすべきか明確にする必要がある。

### [HIGH] Sprint 中の4つの制約ルールを明文化
**Suggestion**: `sprint-planning.md` の Output または `SKILL.md` の Automatic Ceremony Flow 説明に「Sprint 中の制約」を追加:
- Sprint Goal を危険にさらす変更は禁止
- 品質は低下させない
- 必要に応じてバックログを精緻化する
- スコープは PO と交渉して明確化できる

### [HIGH] Sprint Review を Working Session として再定義
**Suggestion**: `sprint-review.md` の Step 3 を「Present to Stakeholder」から「Collaborate with Stakeholder」に変更し、ステークホルダーとの双方向の議論（バックログ適応、将来方向性の決定）を中心に据える。

### [MEDIUM] Daily Scrum の参加ルールを明確化
**Suggestion**: `daily-scrum.md` に「PO と SM は Sprint Backlog アイテムに取り組んでいる場合のみ Developer として参加する」旨を追加。

### [MEDIUM] Product Goal の「一度に一つ」ルールをバックログテンプレートに追加
**Suggestion**: `product-backlog.md` テンプレートに「Product Goal は一度に一つ。現在のゴールを達成または放棄してから次のゴールを設定する」というルールを追加。

### [MEDIUM] Scrum Master の役割定義を拡張
**Suggestion**: `scrum-master.md` の Role Boundary に「Product Owner への奉仕（Product Goal 定義支援）」と「組織への奉仕（Scrum 導入支援）」を追加。現在の定義は「プロセス改善特化」すぎる。

### [MEDIUM] Backlog Refinement の位置づけを修正
**Suggestion**: `SKILL.md` の説明で Backlog Refinement が「Sprint 中に継続的に行われる活動（公式イベントではない）」であることを明示する。現在は他の Ceremony と同列に扱われている。

### [LOW] Retrospective の改善アイテムを Sprint Backlog に追加できる旨を記載
**Suggestion**: `sprint-retrospective.md` の Step 4 に「最も影響の大きい改善は次の Sprint Backlog に追加することも可能」を追記。

### [LOW] Increment の複数作成可能性を明示
**Suggestion**: `sprint-review.md` または `definition-of-done.md` に「1 Sprint 内で複数の Increment を作成できる」旨を記載。

### [LOW] Sprint Backlog の所有権を明示
**Suggestion**: `sprint-planning.md` に「Sprint Backlog は Developers による Developers のための計画である」という Scrum Guide の表現を追加。役割分離の観点で重要。

---

## Summary Score

| Category | Count | Priority |
|----------|-------|----------|
| Critical Gaps | 10 | HIGH: 3, MEDIUM: 5, LOW: 2 |
| Interpretation Issues | 5 | 主に解釈の違い、根本的な誤りは少ない |
| Intentional Adaptations | 6 | 問題なし（AI向けに合理的） |
| Improvement Suggestions | 10 | HIGH: 3, MEDIUM: 4, LOW: 3 |

**Overall Assessment**: スキルパッケージの核心部分（役割分離、自動連鎖、透明性のファイル化）は Scrum Guide 2020 の精神に沿っており品質が高い。主なギャップは Sprint 中断ルール、Working Session としての Sprint Review、Daily Scrum 参加ルールなど、ガイドの具体的なルールが実装に反映されていない点にある。
