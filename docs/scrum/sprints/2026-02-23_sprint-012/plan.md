# Sprint 12 Plan

## Sprint Goal

/scrum update の安全性を実証し、プロセス改善の品質を安定させる

## Branch

`feature/sprint-12-update-validation`

## PR

#21

## Selected Items

### [P25] `/scrum update` のカスタマイズ保持検証 - `done`
- `/scrum update` を実行し、scrum-*.md のプロジェクト固有カスタマイズが保持されることを確認
- 更新前後の diff を記録
- SKILL.md の上流統合フロー注記が機能していることを確認

### [P26] レトロスペクティブ品質の安定化ガイドライン - `done`
- SM エージェント定義に「安定期でも最低1つの改善提案を出す」ガイドラインを追加
- sprint-retrospective.md に安定期の改善発見を支援する視点を記載
- Sprint 8-10 のレトロ品質差分析をログに記録

### [P27] Sprint 中リアルタイム問題検出の改善 - `done`
- Developer エージェント定義に「問題発生時の即時記録」手順を明記
- Daily Scrum セレモニーに「前回以降の failures/adaptations 確認」ステップを追加
- Sprint 中の問題が Review まで放置されるパターンの構造的防止

## Implementation Steps

1. P25: `/scrum update` 実行前の状態をスナップショット -> update 実行 -> diff 確認
2. P26: SM エージェント定義 + sprint-retrospective.md を編集 + 過去レトロ分析
3. P27: Developer エージェント定義 + daily-scrum.md を編集
4. DoD 自己検査（全アイテム）
5. コミット・プッシュ
