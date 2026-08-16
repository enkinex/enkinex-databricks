"""Enkinex Databricks — Data Asset Bundles as Code Library.

A modular KCL implementation of the Databricks Asset Bundles
configuration surface, built to author, type-check, and validate
bundle definitions as Governance-as-Code.

This is the T0 scaffold root schema; modules for the rest of the bundle
surface land one per concern.
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
