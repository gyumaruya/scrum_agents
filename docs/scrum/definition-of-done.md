# Definition of Done

An Increment is "Done" when ALL criteria are met:

## Quality

- [ ] Implementation works as intended
- [ ] No known defects introduced
- [ ] Follows project conventions (SKILL.md YAML frontmatter, agent definition format)

## Testing

- [ ] Skill can be installed via `/scrum install` (symlink created)
- [ ] Skill loads correctly in Claude Code (YAML frontmatter valid)
- [ ] Manual verification documented in sprint log

## Versioning (MANDATORY for skill file changes)

- [ ] SKILL.md `metadata.version` をバージョニングポリシーに従ってバンプ済み
- [ ] `docs/scrum/.scrum-version` を一致させる（`/scrum update` または手動）
- [ ] バージョンバンプの理由を sprint log または decisions.md に記録

**バージョニングポリシー (SemVer):**
- **Major** (X.0.0): 破壊的変更 -- ファイル構造変更、機能削除、セレモニーフロー非互換
- **Minor** (x.Y.0): 新機能 -- セレモニーステップ追加、エージェント機能追加、テンプレート新セクション
- **Patch** (x.y.Z): 修正 -- 文言改善、バグ修正、テンプレート微調整、クリーンアップ

## Delivery Verification (MANDATORY for skill file changes)

- [ ] 変更を main にマージ済み
- [ ] インストール済みスキルにコピー済み (`cp -R skills/scrum/* ~/.agents/skills/scrum/`)
- [ ] セッションをリロード済み (`/reload`)
- [ ] リロード後に `/scrum status` または `/scrum update` を実行し、変更が反映されていることを確認
- [ ] 確認結果を sprint log に記録

## Transparency

- [ ] Changes committed to git with descriptive message
- [ ] All changes staged and committed (no uncommitted files at done)
- [ ] PR updated or created for stakeholder review
- [ ] Sprint log updated with what was done and why
- [ ] Sprint 中に発生した失敗がfailures.mdに記録されている
- [ ] Sprint 中の適応がadaptations.mdに記録されている

## Scrum

- [ ] Acceptance criteria from backlog item are met
- [ ] Increment is usable (not half-finished)
- [ ] current.md の Item Status が PO Review 判定と一致している（approved / needs-revision）
- [ ] role-interactions.md に PO Review の履歴（Review Result, Notes）が記録されている

---

*This DoD evolves through retrospectives. SM agent updates it based on evidence.*
