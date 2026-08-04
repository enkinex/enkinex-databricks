# enkinex-databricks

KCL library implementing the **Databricks Asset Bundles** configuration
surface as Governance-as-Code — the sibling of enkinex-odcs /
enkinex-odps for platform deployment. Currently a **v0.1.0 scaffold**.

This repo is the **benchmark vehicle of the enkinex opencode
migration**: it is built end-to-end by the agentic loop per the task
ladder (T0–T8) in enkinex-aiops
[`plan/opencode/benchmark-enkinex-databricks.md`](https://github.com/enkinex/enkinex-aiops/blob/main/plan/opencode/benchmark-enkinex-databricks.md).

## Repo map

| Path | Purpose |
|---|---|
| `dab.k` | Root `Bundle` schema (scaffold) — will compose one module per bundle top-level key |
| `test/*.yaml` | `kcl vet` fixtures validated against the schemas |
| `kcl.mod` | Package `enkinex-databricks`, edition 0.12.7 |

Planned modules (benchmark tasks T1–T3): `bundle`, `workspace`,
`artifact`, `resources/` (29 types; jobs/pipelines/clusters/schemas/
volumes/dashboards first), `target`, `variable`, `preset`,
`permission`, `sync`, `python`, `experimental`.

## References

- Human reference: <https://docs.databricks.com/aws/en/dev-tools/bundles/reference>
- Machine reference: `databricks bundle schema` → snapshot as
  `dab-schema.json` (task T1 input).
- Idiom reference: `enkinex-odcs` / `enkinex-odps` (mixins, docstring
  format, `check` rules, Justfile shape).

## Commands

`just init` · `just fmt` · `just lint` · `just test` · `just docs` ·
**`just check` — the gate every change must pass**.

## Standards

Same as enkinex-odcs: docstrings on every schema/field, `check` rules
for enums (`engine`, `mode`, permission levels, pause status), mixins
in `common/`, fixtures for every schema. Preserve the reference doc's
"Added in Databricks CLI version X" annotations in docstrings.


<!-- BEGIN GENERATED: enkinex-aiops/AGENTS.shared.md — do not edit here; run "just sync-opencode" in enkinex-aiops -->
## Shared enkinex rules

> GENERATED from enkinex-aiops `AGENTS.shared.md` (ADR-0005). Do not edit
> this block in a sibling repo — change the source in enkinex-aiops and run
> `just sync-opencode`.

Enkinex is an open-source **Semantic & Governance as Code** project: KCL
libraries that implement open standards (ODCS, ODPS, OKF) and platform
configuration surfaces (Databricks Asset Bundles) as typed, modular code.

### Git workflow (locked)

- Branch slug: `<type>/<scope>-<short-summary>`; `type` ∈ `feat · fix ·
  refactor · docs · chore · test · infra · proj`.
- Commits: Conventional Commits subset `<type>(<scope>): <imperative ≤72>`,
  `Refs:` footer pointing at the plan section delivered, no `Closes:`/
  `Fixes:`/`Resolves:` (there are no GitHub Issues).
- **Never push, merge, or open PRs unless the user explicitly asks.** The
  iteration ends at a local commit. `gh` CLI is the only GitHub surface
  (ADR-0002): no GitHub MCP, no Actions, no Issues/Projects/Releases.
- Never force-push to `main`; never rewrite history.
- Before any repo edit: `git fetch origin`, confirm sync with `main`,
  create the branch. Commit at the end of the iteration.

### Project lifecycle

Repos plan at the root level: `plan/` (active plans; finished work moves
to `plan/done/`), `discovery/` (analysis feeding plans), `architecture/`
(ADRs). ADRs record one-way decisions only — procedural workflows are
defined as executable artefacts (agents, commands, loop tasks, plugin
hooks), never as ADR prose (ADR-0004, executable governance). Commit
`Refs:` footers point at the delivered `plan/` section.

### Model tiers (OpenRouter)

| Tier | Models | Use |
|---|---|---|
| Free | `:free` suffixed IDs | explore/triage, formatting, titles |
| Mid | `moonshotai/kimi-k2`, `deepseek/deepseek-v3.2`, `google/gemini-3.5-flash` | code edits, docs, tests |
| Frontier | `moonshotai/kimi-k3` (default), `anthropic/claude-opus-5`, `openai/gpt-5.6` family | plans, reviews, ADRs |

Do not switch tiers silently; model pins change only via PR.

### Code standards

- KCL libraries: one module per concern, docstrings on every schema and
  field (they feed `just docs`), `check` rules for enums/constraints,
  `kcl vet` fixtures under `test/`. Gate: `just check` (fmt + lint + test).
- Stage explicit paths only — never `git add -A` / `git add .`; skip
  anything that looks like a secret.
<!-- END GENERATED -->
