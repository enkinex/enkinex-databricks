"""Enkinex Databricks — Data Asset Bundles as Code Library.

A modular KCL implementation of the Databricks Asset Bundles
configuration surface, built to author, type-check, and validate
bundle definitions as Governance-as-Code.

This is the T0 scaffold root schema. Modules land per
`plan/opencode/benchmark-enkinex-databricks.md` (tasks T1–T3).
"""

schema Bundle:
    """The root Databricks Asset Bundle definition.

    Attributes
    ----------
    name : str, default is Undefined, required.
        The programmatic (logical) name of the bundle.
        Examples: "hello-bundle"
    """
    name: str
