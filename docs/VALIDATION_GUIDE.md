# Validation Guide

Validation is performed before business analysis and before publishing a semantic model.

## 1. Date validation

Check that the Date Dimension has:

- One row per Date
- No duplicate Date keys
- No gaps in the intended range
- Coverage for primary and secondary Fact Dates

## 2. Dimension-key validation

Each Dimension key must be:

- Non-null
- Unique
- Stable for Fact lookups

For historical Dimensions, the natural business ID can repeat across versions, but the surrogate key must remain unique.

## 3. Fact-grain validation

Each Fact is grouped by its declared grain. A query returning rows from `HAVING COUNT_BIG(*) > 1` indicates duplicate Fact-grain rows.

## 4. Referential-integrity validation

Every non-null Fact foreign key must match one row in its Dimension. Fabric Warehouse key constraints can be declared as `NOT ENFORCED`, so SQL validation is still required.

## 5. Business-rule validation

Examples:

- Received Quantity should not exceed Ordered Quantity.
- Delivered orders should not also be marked Cancelled.
- Delivery Date should not be earlier than Ship Date.
- Inventory movement should reconcile with Closing Quantity.
- Allocation percentages should remain within a valid range.

## 6. Semantic-model validation

The final model is checked for:

```text
Many-to-one Fact–Dimension relationships
Single-direction filtering
No Fact-to-Fact relationships
One active primary Date relationship per Fact
Inactive secondary Date relationships
No ambiguous filter paths
```

## 7. KPI reconciliation

Important DAX measures are compared with independent Warehouse SQL results. The objective is not to duplicate all DAX in SQL, but to validate the main totals and ratios.
