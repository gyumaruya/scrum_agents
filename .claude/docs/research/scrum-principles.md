# Scrum Principles Research
# For: AI Agent Organization Based on Scrum
# Date: 2026-02-22
# Sources: Official Scrum Guide 2020, Scrum.org, Scrum Expansion Pack (2026)

---

## 1. Three Pillars of Empiricism

Scrum is founded on empiricism — knowledge comes from experience and decisions based on observation.

### Transparency
> "The emergent process and work must be visible to those performing the work as well as those receiving the work."

- All significant work must be visible to stakeholders
- Important decisions rely on clear visibility of artifacts
- In AI contexts: flag AI-generated work items, expose AI decisions and assumptions

### Inspection
> "The Scrum artifacts and the progress toward agreed goals must be inspected frequently and diligently to detect potentially undesirable variances or problems."

- Frequent and diligent review of artifacts and progress
- Inspection enables early detection of problems
- In AI contexts: AI-generated code receives same review rigor as human-written code

### Adaptation
> When processes deviate beyond acceptable limits, adjustments must occur promptly.

- Teams adapt immediately upon learning new information through inspection
- Iterative improvement is built into the framework
- In AI contexts: treat AI integration as empirical endeavor — hypothesize, test, review, adapt

---

## 2. Five Scrum Values

Values must be embodied for the empirical pillars to come to life and build trust.

### Commitment
- Dedicate to achieving goals and supporting each other
- Commit to delivering value, maintaining quality, achieving Sprint Goals
- Embrace empirical approaches to problem-solving
- Concrete: Establish clear Sprint Goals, remain dedicated despite unexpected challenges

### Focus
- Primary attention stays on Sprint work and progress toward objectives
- Focus on "creating value, what's currently most important, and getting to Done"
- Concrete: Developers organize around the Sprint Goal

### Openness
- Team and stakeholders maintain transparency about work and challenges
- Share struggles, provide feedback, learn collaboratively
- Concrete: Share expertise during Sprint Planning, identify risks early, proactively address them

### Respect
- Recognize each other as capable, independent professionals
- Value diverse viewpoints and expertise
- Concrete: Recognize and appreciate diverse perspectives, value unique contributions

### Courage
- Demonstrate willingness to tackle difficult problems and do what's right
- Explore unknowns, change direction, share information openly
- Engage in respectful disagreements
- Concrete: Voice concerns, challenge status quo, propose alternative approaches

---

## 3. Scrum Team Roles & Accountabilities

The Scrum Team is the fundamental unit — small, cross-functional, self-managing (no sub-teams or hierarchies).

### Developers
- Commit to creating usable Increments each Sprint
- Create and manage the Sprint Backlog
- Maintain quality through Definition of Done adherence
- Daily adaptation toward Sprint Goal
- Hold professional accountability to each other
- **Cross-functional**: possess all skills needed to create value each Sprint

### Product Owner (PO)
- Accountable for maximizing product value
- Develop and communicate the Product Goal
- Create and order Product Backlog items clearly
- Ensure transparency and stakeholder understanding
- Acts as "cognitive orchestrator" — providing clear goals, context, constraints

### Scrum Master (SM)
- Accountable for establishing Scrum and enabling team effectiveness
- **Serves Developers**: coaches self-management and cross-functionality, removes impediments
- **Serves Product Owner**: helps with Product Goal definition, facilitates stakeholder collaboration
- **Serves Organization**: leads Scrum adoption training, removes barriers between stakeholders and team
- Establishes working agreements (e.g., "AI may assist but humans remain accountable")

---

## 4. Scrum Events

All events are formal opportunities for inspection and adaptation. Events have fixed timeboxes.

### Sprint (The Container Event)
- Duration: 1 month or less (consistent length throughout)
- "Sprints are the heartbeat of Scrum, where ideas are turned into value"
- Enables predictability through regular inspection and adaptation cycles
- No changes that endanger Sprint Goal; scope may be clarified with PO
- Sprint can be cancelled only if Sprint Goal becomes obsolete (PO decision)

### Sprint Planning (Sprint Initiation)
- Timebox: Max 8 hours (1-month Sprint), shorter for shorter Sprints
- Topics:
  1. **Why** is this Sprint valuable? (PO proposes, team crafts Sprint Goal)
  2. **What** can be Done this Sprint? (Developers select from Product Backlog)
  3. **How** will chosen work get done? (Developers plan the work)

### Daily Scrum
- Timebox: 15 minutes
- Purpose: Inspect progress toward Sprint Goal, adapt Sprint Backlog
- Participants: Developers (PO/SM join only if working on Sprint items)
- Developers choose their own structure and technique
- Not limited to status update — creates focus and improves communication

### Sprint Review
- Timebox: Max 4 hours (1-month Sprint)
- Purpose: Inspect the outcome of the Sprint, determine future adaptations
- Working session (not a presentation): team and stakeholders collaborate on next steps
- In AI contexts: showcase "not only what was built, but how it was built with AI and learnings"

### Sprint Retrospective
- Timebox: Max 3 hours (1-month Sprint)
- Purpose: Plan ways to increase quality and effectiveness
- Inspects: individuals, interactions, processes, tools, Definition of Done
- Must be psychologically safe and blameless
- Identified improvements become concrete Sprint Backlog items (operational, not aspirational)
- Techniques: Start/Stop/Continue, STAR model, dot voting, silent writing, timelines

---

## 5. Scrum Artifacts & Commitments

Each artifact has a commitment to ensure transparency and focus against which progress can be measured.

### Product Backlog → Commitment: Product Goal
- Ordered, emergent list of requirements
- **Product Goal**: "Describes a future state of the product which can serve as a target for the Scrum Team to plan against"
- The Scrum Team must fulfill (or abandon) one Product Goal before taking on the next
- Refined continuously (adding detail, estimates, order)

### Sprint Backlog → Commitment: Sprint Goal
- Comprises: Sprint Goal + selected PBI + delivery plan
- **Sprint Goal**: "The single objective for the Sprint"
- Provides flexibility in how work is executed while creating focus and coherence
- Created by the Developers during Sprint Planning
- Updated throughout Sprint as more is learned

### Increment → Commitment: Definition of Done (DoD)
- Each Increment represents progress toward Product Goal and must be usable
- **Definition of Done**: "A formal description of the state of the Increment when it meets the quality measures required"
- If a PBI does not meet DoD, it cannot be included in an Increment
- Multiple Increments can be created within a Sprint
- In AI contexts: DoD must cover AI-generated content review criteria

---

## 6. Self-Management Patterns

The 2020 Scrum Guide updated "self-organizing" to "self-managing" — a key distinction.

### What Self-Managing Means
- The team internally decides who does what, when, and how
- Applies to the entire Scrum Team (not just Developers)
- Controls not just HOW they work, but WHAT and WHEN

### Three Foundational Elements for Self-Management
1. **A Clear Goal** — provides direction and focus
2. **Pressure** — creates urgency for collaboration
3. **Boundaries** — establishes constraints (frameworks, organizational policies, standards)

### Self-Management Behaviors
- Independent task assignment and timing decisions without hierarchical oversight
- Clear accountability structures that emerge organically
- Full ownership of work results
- Continuous and broad communication within the team
- Creative solutions to complex problems emerge from team interactions

### Organizational Requirements
- Trust, transparency, and autonomy support from the organization
- Servant leadership (not command-and-control)
- Motivated individuals with strong self-discipline
- Delegation of responsibility (not just tasks)

---

## 7. Continuous Improvement Mechanisms

Scrum embeds improvement at multiple levels.

### Process-Level (Retrospective)
- Inspect how the last Sprint went: individuals, interactions, processes, tools, DoD
- Identify what went well, problems encountered, potential improvements
- Most impactful improvement is selected for immediate action in next Sprint
- Implemented improvements appear in Sprint Backlog (not a separate list)

### Product-Level (Review + Backlog Refinement)
- Sprint Review inspects the Increment and adapts the Product Backlog
- Backlog refinement: adding detail, estimates, and order to PBIs
- Stakeholders and team collaborate to determine what comes next

### Daily-Level (Daily Scrum)
- Daily adaptation toward Sprint Goal
- Developers inspect their progress and adjust the plan
- Immediate course-correction without waiting for formal review

---

## 8. Applying Scrum to AI Agent Organizations

Key insights from the Scrum Expansion Pack (2026) and Scrum.org resources.

### Transparency Requirements for AI
- Clearly flag AI-generated work items and outputs
- Share the rationale behind AI-driven decisions
- Expose assumptions the AI made
- Document where AI tools are used in the workflow
- Make explicit the decision boundaries where humans retain authority

### Inspection Practices for AI Work
- AI-generated artifacts receive same review rigor as human-created ones
- Sprint Reviews showcase HOW work was built with AI, not just WHAT was built
- Create special review checklists for AI-generated content
- Use tight test harnesses: architectural compliance tests, specification by example

### Adaptation in AI Contexts
- Treat AI integration as empirical endeavor: hypothesize → test → review → adapt
- Sprint Retrospectives: adjust task granularity given to AI agents, observe results next Sprint
- Iterative refinement of AI agent behavior through the Scrum cycle

### Human Accountability Principles
- "AI may recommend, but humans decide"
- Every team member remains fully accountable for quality of the Increment
- Every piece of AI-generated output must be reviewed
- "Treat AI as a junior collaborator whose output is never accepted on trust"
- Human-in-the-loop at every decision boundary

### Role Adaptation for AI Teams
- **Product Owner**: Acts as "cognitive orchestrator" — provides AI agents with clear goals, context, constraints; interprets results through lens of user value
- **Scrum Master**: Establishes working agreements (e.g., "AI agents may generate work, but humans remain accountable"); configures and supports AI tools strategically
- **Developers**: Define, configure, and orchestrate AI agents; maintain accountability for AI-generated outputs

### Key Principle: Augmentation over Automation
- Humans retain decision-making authority
- AI handles repetitive and complex technical work
- Administrative burdens decrease → humans focus on creativity and strategy
- AI is positioned as a team member, not a replacement

---

## Sources

- [Official 2020 Scrum Guide](https://scrumguides.org/scrum-guide.html)
- [Scrum Values - Scrum.org](https://www.scrum.org/resources/scrum-values)
- [Self-Managing Scrum Team - Scrum.org](https://www.scrum.org/resources/blog/self-managing-scrum-team)
- [Setup an AI-Powered Scrum Team - Scrum.org](https://www.scrum.org/resources/blog/setup-ai-powered-scrum-team-quick-start-guide)
- [AI and Scrum Expansion Pack 2026 - scrumexpansion.org](https://scrumexpansion.org/ai-and-scrum/2026.1/)
- [Scrum Guide Update: Self-Mgt replaces Self-Organization - Scrum.org](https://www.scrum.org/resources/blog/scrum-guide-2020-update-self-mgt-replaces-self-organization)
- [What is a Sprint Retrospective - Scrum.org](https://www.scrum.org/resources/what-is-a-sprint-retrospective)
