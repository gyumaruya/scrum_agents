# AI Agent Self-Improvement and Self-Organizing Teams: Research Summary

Date: 2026-02-22

---

## 1. AI Agent Self-Improvement Frameworks

### Key Frameworks (2025)

**Godel Agent / Darwin Godel Machine**
- A coding agent that can read and modify its own code
- Evaluated against SWE-bench and Polyglot benchmarks
- Proposed new versions are benchmarked before replacing the previous version
- Reference: https://sakana.ai/dgm/

**Self-Evolving Loop (GEPA Framework)**
- Samples agent trajectories
- Reflects on trajectories in natural language
- Proposes prompt revisions
- Evolves through iterative feedback loops
- A blueprint for continuous self-improving prompt optimization

**REFLEX Agent**
- Combines RL (Reinforcement Learning), RAG, and modern agent frameworks
- Improves with every conversation
- Performance improvements from 17% to 53% on SWE Bench Verified

**Stanford CS329A Course: Self-Improving AI Agents**
- Academic research on agents that learn from their own experience
- Reference: https://cs329a.stanford.edu/

**OpenAI Self-Evolving Agents Cookbook**
- Practical guide for autonomous agent retraining
- Reference: https://developers.openai.com/cookbook/examples/partners/self_evolving_agents/

### Key Concepts for Self-Improvement

1. **Metacognitive Learning** - Agent's intrinsic ability to evaluate, reflect, and adapt its own learning processes
2. **Trajectory Sampling** - Collect agent action sequences and analyze for improvement opportunities
3. **Prompt Evolution** - Automatically improve system prompts based on outcomes
4. **Code Self-Modification** - Agents that can modify their own implementation

---

## 2. Self-Organizing Multi-Agent Systems

### Core Concepts

- **Emergent Orchestration**: Minimal predefined structure, agents self-organize and collaborate
- **Decentralized Coordination (Swarming)**: Agents share info with neighbors rather than a global knowledge base
- **Robustness**: Failure of one agent does not cause system failure
- **Collective Intelligence**: Solutions emerge from agent interaction, not top-down planning

### Modern LLM-Based Multi-Agent Systems

- CrewAI: Leading multi-agent platform for LLM-based coordination
- Microsoft: Designing Multi-Agent Intelligence with structured roles
- Google Cloud: Multi-agent systems for enterprise applications

### Amazon Real-World Lessons

- Evaluation is critical for agentic systems
- Agents need clear success metrics
- Human oversight essential for high-stakes decisions

---

## 3. AGENTS.md vs CLAUDE.md: Configuration as Organizational Memory

### AGENTS.md

- Open format for guiding coding agents (think: README for agents)
- Used by 60k+ open-source projects
- Plain Markdown format - any headings, agent parses text
- Supported by: Cursor, Zed, GitHub Copilot, and many others
- **NOT natively supported in Claude Code** - workaround: reference via `@AGENTS.md` in CLAUDE.md
- Priority: closest AGENTS.md to edited file wins; user prompts override everything
- Reference: https://agents.md/

### CLAUDE.md

- Claude Code's native configuration/memory format
- Automatically loaded at session start
- Contains project-specific context, rules, standards
- Versioned with Git - serves as team organizational memory
- Can include modular rules in `.claude/rules/*.md` (file-glob-targeted)
- Hard limit: 200 lines for MEMORY.md (index + separate topic files recommended)
- Reference: https://www.humanlayer.dev/blog/writing-a-good-claude-md

### Key Difference

| Aspect | AGENTS.md | CLAUDE.md |
|--------|-----------|-----------|
| Ecosystem | Universal (all AI IDEs) | Claude Code specific |
| Format | Plain Markdown | Markdown with @imports |
| Native Support | Not in Claude Code | Yes |
| Purpose | Cross-tool agent guidance | Claude-specific project memory |

### Self-Improving CLAUDE.md Pattern

Technique described at https://martinalderson.com/posts/self-improving-claude-md-files/:

1. Agent analyzes session JSONL logs from `~/.claude/projects`
2. Searches for user frustration patterns, repeated questions
3. Identifies gaps in current CLAUDE.md coverage
4. Proposes and applies targeted updates
5. Can run as scheduled task for continuous self-improvement
6. Transforms documentation maintenance from chore to ~30 second job

---

## 4. Claude Code Subagent Configuration (Organizational Memory Layer)

### Subagent File Format

```yaml
---
name: agent-name
description: When Claude should delegate to this agent (critical for auto-delegation)
tools: Read, Grep, Glob, Bash, Edit, Write
model: sonnet | opus | haiku | inherit
permissionMode: default | acceptEdits | dontAsk | bypassPermissions | plan
maxTurns: 50
skills:
  - skill-name-1
  - skill-name-2
memory: user | project | local
background: false
isolation: worktree
---

System prompt in Markdown...
```

### Storage Locations (Priority Order)

1. `--agents` CLI flag (session only, highest priority)
2. `.claude/agents/` (project-level, version-controlled)
3. `~/.claude/agents/` (user-level, all projects)
4. Plugin `agents/` directory (lowest priority)

### Persistent Memory System

The `memory` field gives subagents a persistent directory surviving across sessions:

- `user` scope: `~/.claude/agent-memory/<name>/` (cross-project)
- `project` scope: `.claude/agent-memory/<name>/` (project-specific, shareable)
- `local` scope: `.claude/agent-memory-local/<name>/` (project-specific, not versioned)

Memory includes first 200 lines of MEMORY.md auto-injected into context.
Agent can read/write to memory directory to build institutional knowledge.

### Skills System

- Stored in `.claude/skills/` or `~/.config/claude/skills/`
- Each skill = directory with `SKILL.md` + optional `/scripts`, `/references`, `/assets`
- Skills preloaded into subagent context via `skills:` frontmatter field
- Auto-discovered based on description matching
- Skills run in main conversation context (unlike subagents with isolated context)

### Hook System for Agents

```yaml
hooks:
  PreToolUse:
    - matcher: "Bash"
      hooks:
        - type: command
          command: "./scripts/validate.sh"
  PostToolUse:
    - matcher: "Edit|Write"
      hooks:
        - type: command
          command: "./scripts/run-linter.sh"
```

Session-level hooks in `settings.json`:
- `SubagentStart` - fires when subagent begins
- `SubagentStop` - fires when subagent completes

---

## 5. Scrum / Agile Applied to AI Agent Teams

### Existing Applications

**Scrum.org Position**
- AI agents reframe from passive tools to active collaborators
- "AI as a Scrum Team Member" - augments human expertise
- Reference: https://www.scrum.org/resources/blog/ai-scrum-team-member

**Akira AI - AgentScrum**
- Dedicated product: AI agents for project management using Scrum methodology
- Reference: https://www.akira.ai/digital-workers/agentscrum/

**Microsoft 365 Copilot**
- Scrum Assistant agent template
- Reference: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/agent-template-scrum-assistant

### AI Roles in Scrum Teams (2025)

- **Product Owner augmentation**: Data-backed decisions, continuous customer validation, backlog prioritization
- **Scrum Master augmentation**: Coach teams, remove systemic blockers, improve flow
- **Developer augmentation**: AI-augmented cross-functional contributors

### AI-Enhanced Sprint Ceremonies

- **Sprint Planning**: Risk Adviser agents analyze constraints, create advisory reports
- **Daily Standup**: AI facilitates, tracks blockers automatically
- **Sprint Review**: AI analyzes accomplishments vs goals
- **Sprint Retrospective**: AI identifies recurring blockers, analyzes tone, highlights success factors

### Continuous Improvement Loop

AI + Agile forms a closed feedback loop:
1. AI collects sprint data automatically
2. AI detects trends across sprints
3. AI identifies recurring blockers/bottlenecks
4. AI tracks whether retrospective action items are implemented
5. Progress is visible and measurable across sprints

### Future (2030 Outlook)

- AI agents handle repetitive/administrative tasks (note-taking, backlog population)
- Humans shift to higher-value responsibilities
- Product Owners: real-time data for strategic decisions
- Scrum Masters: transformation, culture, organizational coaching

---

## 6. Key Patterns for Agent Self-Improvement

### Pattern 1: Configuration File as Organizational Memory

- CLAUDE.md / AGENTS.md / subagent `.md` files = externalized organizational memory
- Versioned in Git = history of organizational learning
- Agents can propose updates to their own config files
- Self-improving loop: experience → log analysis → config update → improved behavior

### Pattern 2: Retrospective-Driven Self-Improvement

1. Agent executes task (sprint)
2. Outcomes logged (JSONL session files)
3. Retrospective agent analyzes logs for patterns
4. Proposes updates to CLAUDE.md / subagent definitions / skills
5. Changes committed to version control
6. Next sprint starts with improved configuration

### Pattern 3: Persistent Memory as Institutional Knowledge

- Subagent `memory:` field enables cross-session learning
- MEMORY.md = compressed institutional knowledge base
- Agents actively curate their own memory files
- Architectural decisions, debugging insights, codebase patterns preserved

### Pattern 4: Skill Evolution

- New skills created when repeated patterns emerge
- Existing skills updated when edge cases discovered
- Skills = reusable, versioned organizational capabilities
- Skills can be auto-discovered and applied by agents

---

## 7. Critical Limitations

1. **Subagents cannot spawn other subagents** - prevents infinite nesting
2. **MCP tools unavailable in background subagents**
3. **AGENTS.md not natively supported in Claude Code** - requires workaround
4. **200-line MEMORY.md limit** - requires disciplined curation
5. **Current AI agents are still "glorified automated prompt execution devices"** for complex Scrum decisions (Scrum.org analysis)
6. **Human judgment essential** for high-stakes agile decisions
7. **Context window limits** - main conversation context must be managed carefully

---

## Sources

- [Self-Improving CLAUDE.md Files - Martin Alderson](https://martinalderson.com/posts/self-improving-claude-md-files/)
- [Create custom subagents - Claude Code Docs](https://code.claude.com/docs/en/sub-agents)
- [AGENTS.md Official Site](https://agents.md/)
- [How to use AGENTS.md in Claude Code](https://aiengineerguide.com/blog/how-to-use-agents-md-in-claude-code/)
- [Agile AI Agents - Scrum.org](https://www.scrum.org/resources/blog/agile-ai-agents)
- [AI as a Scrum Team Member - Scrum.org](https://www.scrum.org/resources/blog/ai-scrum-team-member)
- [AgentScrum - Akira AI](https://www.akira.ai/digital-workers/agentscrum/)
- [Darwin Godel Machine - Sakana AI](https://sakana.ai/dgm/)
- [Stanford CS329A - Self-Improving AI Agents](https://cs329a.stanford.edu/)
- [Self-Evolving Agents - OpenAI Cookbook](https://developers.openai.com/cookbook/examples/partners/self_evolving_agents/autonomous_agent_retraining/)
- [Awesome Self-Evolving Agents Survey](https://arxiv.org/abs/2508.07407)
- [Claude Code Customization Guide - alexop.dev](https://alexop.dev/posts/claude-code-customization-guide-claudemd-skills-subagents/)
- [Agentic AI in Agile: Smarter Sprints - HPE Developer](https://developer.hpe.com/blog/agentic-ai-in-agile-smarter-sprints-faster-retros/)
- [AI-Enhanced Sprint Retrospective - Scrum.org](https://www.scrum.org/resources/blog/ai-enhanced-sprint-retrospective-part-4-4)
