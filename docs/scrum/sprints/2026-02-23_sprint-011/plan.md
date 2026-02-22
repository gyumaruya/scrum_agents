# Sprint 11 Plan

## Sprint Goal
Scrum の検査・継続性・アイテム独立性を強化し、バージョン管理運用を確立する

## Selected Items

### [P24] スキル変更時のバージョンバンプ運用の確立 -- HIGHEST PRIORITY
- **AC**:
  - SKILL.md metadata.version を実態に合わせてバンプ (1.1.0 -> 1.2.0)
  - バージョンバンプルールを DoD に明記 (Versioning セクション追加)
  - バージョニング方針の記録 (decisions.md に SemVer ポリシー)

### [P19] Sprint 中の検査チェックポイント強制
- **AC**:
  - セレモニー定義に DoD チェックステップ追加
  - Developer エージェントに自己検査責務追加
  - Sprint Review 前検査構造
  - 検査結果の current.md 記録

### [P20] セッション間コンテキスト継続性の確保
- **AC**:
  - セッション開始時の読み込みファイル一覧・順序を明記
  - current.md に Sprint Summary セクション定義
  - エージェント定義にコンテキストロード手順追加
  - セッション再起動後のコンテキスト維持検証

### [P21] バックログアイテム独立性のガイドライン
- **AC**:
  - PO エージェントに INVEST 原則セクション追加
  - 独立性判断ガイドライン記載
  - backlog-refinement.md にアイテム分割確認ステップ追加

### [P23] `/scrum update` の CLAUDE.md 更新動作検証
- **AC**:
  - /scrum update 実行後 CLAUDE.md Scrum セクション一致確認
  - 更新前後の差分記録
  - 非 Scrum セクション非破壊確認

## Context
- ステークホルダーが6つの問題を同時に指摘 -> 5つの独立バックログアイテムに分解（P22 Heartbeat 調査は次 Sprint に繰り越し）
- P24 を最優先に設定（バージョンバンプが他の改善の配布基盤）
- セッション間タイマー再起動テスト (22:48 停止 -> 0:00 再起動) を P20 検証に含む
