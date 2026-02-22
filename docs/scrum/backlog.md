# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P1] スキルパッケージがScrumプロセスとして実際に動作する

**As** a stakeholder, **I want** `/scrum` を任意のプロジェクトで実行したときに
Scrumの導入からセレモニーの自動連鎖まで実際に機能すること, **so that**
ユーザーは欲しいものを伝えるだけで開発が自動で進む。

**Acceptance Criteria:**
- [ ] `/scrum` 初回実行でdocs/scrum/、エージェント、ルールが正しく作成される
- [ ] POエージェントがステークホルダーの要望をバックログアイテムに変換する
- [ ] Sprint Planningが自動で始まり、Devが実装に入る
- [ ] Increment完成後にReviewとRetroが自動連鎖する
- [ ] 全てこのスキルパッケージ自身で検証済み（dogfooding）

**Notes:** 現在このプロジェクト自身でdogfoodingを開始した。このスプリントで検証する。

### [P2] セレモニー定義がスキルの実行者に十分な指示を与える

**As** a stakeholder, **I want** ceremonies/ のリファレンスが曖昧さなく、
エージェントが迷わずセレモニーを実行できること, **so that**
自動連鎖が途切れない。

**Acceptance Criteria:**
- [ ] 各セレモニーのトリガー条件が明確
- [ ] 各セレモニーの入力・出力が定義されている
- [ ] 次のセレモニーへの連鎖条件が明記されている

### [P3] エージェント定義が自律動作に十分な情報を持つ

**As** a stakeholder, **I want** PO/SM/Devエージェントが自分の役割、使えるツール、
判断基準を理解した上で自律的に動くこと, **so that** ユーザーが細かく指示しなくてよい。

**Acceptance Criteria:**
- [ ] 各エージェントの判断基準が定義されている
- [ ] ツール非依存: 環境に応じて適切なツールを選択できる
- [ ] 役割の境界が明確（POはwhat/why、DevはHow、SMはprocess）

### [P4] インストール/アンインストールが確実に動作する

**As** a stakeholder, **I want** `/scrum install` と `/scrum uninstall` が
期待通りに動作すること, **so that** どのプロジェクトにも簡単に導入・撤去できる。

**Acceptance Criteria:**
- [ ] `/scrum install` でシンボリックリンクが作成される
- [ ] `/scrum uninstall` でリンク削除 + オプションでプロジェクトファイル削除
- [ ] 既にインストール済みの場合は適切に報告

### [P5] Retrospectiveが実際に組織を改善する

**As** a stakeholder, **I want** Retrospectiveの結果としてエージェント定義、ルール、DoDが
具体的に改善されること, **so that** スプリントを重ねるほど組織が良くなる。

**Acceptance Criteria:**
- [ ] SMエージェントがエビデンスに基づいて1つ以上のファイルを変更する
- [ ] 変更内容がadaptations.mdに記録される
- [ ] 変更がgit commitされて学習履歴になる
