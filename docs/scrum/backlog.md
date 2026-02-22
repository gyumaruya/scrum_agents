# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P1] ロール分離の強制と客観的レビューの実現

**As** a stakeholder, **I want** PO/SM/Devが別々のエージェントとして動作し、
あるロールの成果物を別のロールが客観的にレビュー・指摘できること, **so that**
一人でやり切ってしまう問題が解消され、Scrumの「検査」が実際に機能する。

**Acceptance Criteria:**
- [ ] 各ロール（PO/SM/Dev）が別エージェント（別セッションまたはサブエージェント）として起動される仕組みがある
- [ ] あるロールの成果物を別のロールがレビューするフローが定義されている（例: DevのIncrementをPOがReviewする、POのバックログをSMが検査する）
- [ ] 同一エージェントが複数ロールを兼任した場合に警告または防止する仕組みがある
- [ ] ロール間のやり取りが記録として残る（透明性）
- [ ] dogfoodingで実際にロール分離が機能することを検証済み

**Notes:** Sprint 1レトロで「全ロールを1人で兼任したため、役割分離の検証ができていない」と記録された。ステークホルダーから「別のロール・別のエージェントが客観的にレビューや指摘をすることが重要」と明確に要望あり。ロール分離なしではScrumの3本柱のうち「検査」が形骸化するため、最優先とする。

### [P2] スキルパッケージがScrumプロセスとして実際に動作する

**As** a stakeholder, **I want** `/scrum` を任意のプロジェクトで実行したときに
Scrumの導入からセレモニーの自動連鎖まで実際に機能すること, **so that**
ユーザーは欲しいものを伝えるだけで開発が自動で進む。

**Acceptance Criteria:**
- [ ] `/scrum` 初回実行でdocs/scrum/、エージェント、ルールが正しく作成される
- [ ] POエージェントがステークホルダーの要望をバックログアイテムに変換する
- [ ] Sprint Planningが自動で始まり、Devが実装に入る
- [ ] Increment完成後にReviewとRetroが自動連鎖する
- [ ] 全てこのスキルパッケージ自身で検証済み（dogfooding）

**Notes:** 現在このプロジェクト自身でdogfoodingを開始した。Sprint 1で基本ループは検証済み。ロール分離（P1）が実現されてこそ真に機能する。

### [P3] セレモニー定義がスキルの実行者に十分な指示を与える

**As** a stakeholder, **I want** ceremonies/ のリファレンスが曖昧さなく、
エージェントが迷わずセレモニーを実行できること, **so that**
自動連鎖が途切れない。

**Acceptance Criteria:**
- [ ] 各セレモニーのトリガー条件が明確
- [ ] 各セレモニーの入力・出力が定義されている
- [ ] 次のセレモニーへの連鎖条件が明記されている

### [P4] エージェント定義が自律動作に十分な情報を持つ

**As** a stakeholder, **I want** PO/SM/Devエージェントが自分の役割、使えるツール、
判断基準を理解した上で自律的に動くこと, **so that** ユーザーが細かく指示しなくてよい。

**Acceptance Criteria:**
- [ ] 各エージェントの判断基準が定義されている
- [ ] ツール非依存: 環境に応じて適切なツールを選択できる
- [ ] 役割の境界が明確（POはwhat/why、DevはHow、SMはprocess）

**Notes:** P1（ロール分離）と密接に関連。ロール分離を実現するにはエージェント定義の充実が前提。

### [P5] インストール/アンインストールが確実に動作する

**As** a stakeholder, **I want** `/scrum install` と `/scrum uninstall` が
期待通りに動作すること, **so that** どのプロジェクトにも簡単に導入・撤去できる。

**Acceptance Criteria:**
- [ ] `/scrum install` でシンボリックリンクが作成される
- [ ] `/scrum uninstall` でリンク削除 + オプションでプロジェクトファイル削除
- [ ] 既にインストール済みの場合は適切に報告

### [P6] Retrospectiveが実際に組織を改善する

**As** a stakeholder, **I want** Retrospectiveの結果としてエージェント定義、ルール、DoDが
具体的に改善されること, **so that** スプリントを重ねるほど組織が良くなる。

**Acceptance Criteria:**
- [ ] SMエージェントがエビデンスに基づいて1つ以上のファイルを変更する
- [ ] 変更内容がadaptations.mdに記録される
- [ ] 変更がgit commitされて学習履歴になる
