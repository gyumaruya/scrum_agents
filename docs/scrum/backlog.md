# Product Backlog

## Product Goal

どのプロジェクトにもインストールでき、AIエージェントがScrumを自律実践しながら
ユーザーに価値を届ける汎用スキルパッケージを完成させる。

---

## Items

<!-- Ordered by value (highest first). PO agent maintains this file. -->

### [P7] ユーザーへの報告をわかりやすくする

**As** a stakeholder, **I want** Scrumの各セレモニーやステータス報告が、
具体的に何が変わったのか・ユーザーにとって何ができるようになったのかを
明確に伝えること, **so that** 技術的な内部変更ではなく「自分にとっての価値」が理解できる。

**Acceptance Criteria:**
- [ ] Sprint Reviewの報告テンプレートに「ユーザーにとっての変化」セクションが含まれている
- [ ] ドキュメント・報告では図表を活用して視覚的にわかりやすくしている
- [ ] 図表だけに頼らず、意図が正確に伝わる文章も併記されている
- [ ] `/scrum status` の出力がユーザー視点で理解しやすい形式になっている

**Notes:** Sprint 4 Review でステークホルダーから直接フィードバック。

### [P8] エージェントに意識・性格を持たせ、積極的に自己改善する振る舞いを実現する

**As** a stakeholder, **I want** Scrumフレームワークを通じてエージェントが
自己改善志向で積極的に行動する性格・意識を持つこと, **so that**
指示待ちではなく、自ら課題を発見し改善を推進するエージェントになる。

**Acceptance Criteria:**
- [ ] エージェント定義に「性格・行動原則」セクションがあり、積極性・自己改善志向が定義されている
- [ ] Retrospectiveで検出した課題に対してSMが自発的に改善提案・実行する振る舞いが定義されている
- [ ] Devが実装中に改善機会を発見した場合、自発的にログ記録・提案する振る舞いが定義されている
- [ ] POがステークホルダーの暗黙の欲求を積極的に察知・提案する振る舞いが定義されている
- [ ] Scrumフレームワーク自体がこれらの積極的行動を促進する仕組みになっている

**Notes:** Sprint 4 Review でステークホルダーから直接フィードバック。

### [P3] セレモニー定義がスキルの実行者に十分な指示を与える

**As** a stakeholder, **I want** ceremonies/ のリファレンスが曖昧さなく、
エージェントが迷わずセレモニーを実行できること, **so that**
自動連鎖が途切れない。

**Acceptance Criteria:**
- [ ] 各セレモニーのトリガー条件が明確
- [ ] 各セレモニーの入力・出力が定義されている
- [ ] 次のセレモニーへの連鎖条件が明記されている

**Notes:** Dev分析: トリガーとAuto-nextは全ファイルに既存。不足は「Input」セクションの明示化とbacklog-refinement.mdのOutput補強。見積S。

### [P5] インストール/アンインストールが確実に動作する

**As** a stakeholder, **I want** `/scrum install` と `/scrum uninstall` が
期待通りに動作すること, **so that** どのプロジェクトにも簡単に導入・撤去できる。

**Acceptance Criteria:**
- [ ] `/scrum install` でシンボリックリンクが作成される
- [ ] `/scrum uninstall` でリンク削除 + オプションでプロジェクトファイル削除
- [ ] 既にインストール済みの場合は適切に報告

**Notes:** Dev分析: SKILL.mdにドキュメントは存在。install.sh新規作成が必要。見積S。

### [P9] スキルアップデート機能（バージョン管理と自動整合）

**As** a stakeholder, **I want** `/scrum update` で既存プロジェクトのScrum関連ファイルが
最新のスキル定義に自動的に整合されること, **so that**
スキルパッケージの改善がインストール済みのプロジェクトにも反映される。

**Acceptance Criteria:**
- [ ] `/scrum update` コマンドが実装されている
- [ ] スキルパッケージにバージョン識別子が含まれている
- [ ] update時に、CLAUDE.md・エージェント定義・ルール・DoD等の関連ファイルが最新テンプレートと整合される
- [ ] スキル呼び出し時にバージョン不一致を検出し、updateを推奨する仕組みがある
- [ ] update時にプロジェクト固有のカスタマイズが保持される（上書きしない）

**Notes:** Dev分析: ゼロからの実装。SKILL.mdにversion追加、Argument Routingにupdate追加、カスタマイズ保持戦略の設計が必要。見積L。

---

## Done

### [P1] ロール分離の強制と客観的レビューの実現 -- DONE (Sprint 4)
### [P4] エージェント定義が自律動作に十分な情報を持つ -- DONE (Sprint 4)
### [P2] スキルパッケージがScrumプロセスとして実際に動作する -- DONE (Sprint 5 Refinement)

Sprint 4でアーカイブ連鎖の責務明確化・実動作が完了。全ACの証跡:
- Sprint Planning自動開始: sprint-planning.md Auto-trigger + Step 6に明記
- アーカイブ責務定義: sprint-retrospective.md Step 5/6にSM executor明記
- current.mdリセット: Sprint 4で実動作（sprint-004アーカイブ作成済み）
- dogfooding: Sprint 1-4の4スプリント運用で検証

### [P6] Retrospectiveが実際に組織を改善する -- DONE (Sprint 5 Refinement)

Sprint 1-4で全AC達成。Sprint 4 Retro でscrum-master.mdのRecord Format改善が直近の証跡。
