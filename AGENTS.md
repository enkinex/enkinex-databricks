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

Shared enkinex workflow/git rules: [AGENTS.shared.md](AGENTS.shared.md)
(synced from enkinex-aiops per ADR-0005 — do not edit here).
