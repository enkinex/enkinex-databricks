# Enkinex Databricks — Asset Bundles as Code Library

> A modular [KCL](https://www.kcl-lang.io/) implementation of the
> [Databricks Asset Bundles](https://docs.databricks.com/aws/en/dev-tools/bundles/reference)
> configuration surface, built to author, type-check, and validate
> bundle definitions as **Governance-as-Code**.

---

> [!IMPORTANT]
> **Scaffold status (v0.1.0).** The library currently ships the T0
> scaffold (`dab.k` root schema + minimal fixture). Modules for the full
> bundle surface land one per concern: `bundle`, `workspace`, `artifacts`,
> `resources` (29 types), `targets`, `variables`, `presets`,
> `permissions`, `sync`, `python`, `experimental`.

---

## Library Commands

```bash
just init      # sync library module dependencies
just test      # kcl vet the bundle + fixtures against the schemas
just docs      # regenerate docs/library/dab.md from the schema docstrings
just check     # fmt + lint + test
```

## References

- Databricks bundle configuration reference:
  <https://docs.databricks.com/aws/en/dev-tools/bundles/reference>
- Machine-readable schema: `databricks bundle schema` (snapshot as
  `dab-schema.json` — benchmark task T1).
- Sibling libraries: [enkinex-odcs](https://github.com/enkinex/enkinex-odcs),
  [enkinex-odps](https://github.com/enkinex/enkinex-odps).

## License

Licensed under the Apache License 2.0.
