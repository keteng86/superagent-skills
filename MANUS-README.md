# SUPERAGENT v7 - portable skill + memory backup

Contents
- skills/   - SUPERAGENT v7 skill modules (sk*, m*, x*, hermes-*)
- tools/    - standalone Python utilities, Solidity/PoC material, reference docs
- memory/   - session memory notes
- root .md  - AGENTS.md (core brain + router), SOUL.md, IDENTITY.md, USER.md, MEMORY.md,
  TIME.md, TOOLS.md, INDEX.md, WORKFLOW.md, DEPLOY.md, STANDARD.md, REVIEW.md,
  HEARTBEAT.md, CHANGELOG.md, panduan.md, README.md, pyproject.toml
- manus.yaml - skill manifest for Manus / Agent-Skills format consumers

Excluded on purpose
- 5 MERGED stubs (m27, m29, x4, x6, x7) - content moved into their target skills
- tools/bug-report-study/ (4.4k files, 32M) - audit corpus, keep separately
- Foundry output (out/, cache/, lib/), node_modules, __pycache__, *.pyc, *.so
- Audit-tool vendors (custom-mythril/, custom-detectors/) - reinstallable from source
- audit/, audits/, logs/, hermes-backup/, hermes-bridge/, reports/, flash-arb/, zip/

Note: SUPERAGENT v7 ships skills as flat files (skills/sk10.md). Hermes expects
skills/<name>/SKILL.md with YAML frontmatter - see manus.yaml for the mapping.
