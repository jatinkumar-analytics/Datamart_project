# BharatMart Project Walkthrough

This document explains the project in simple, interview-friendly language.

## 30-second explanation

I built a dimensional data model in Microsoft Fabric for a fictional retail company. Seven clean source exports were loaded into a Lakehouse staging layer and modelled in a Fabric Warehouse. The Warehouse contains 13 Dimensions, nine Facts, and one Product–Supplier Bridge. I created a Retail Direct Lake semantic model for sales and supply-chain analysis, and a separate Workforce model for Payroll and Attendance. I added controlled relationships, Date roles, focused DAX measures, a validation approach, and Git integration.

## The business problem

A retail company does not have only Sales data. It also needs to understand Returns, Inventory, Promotions, Procurement, Shipments, Order Fulfilment, Payroll, and Attendance.

These processes have different grains. For example:

- Sales is at order-line grain.
- Inventory is at daily product-warehouse grain.
- Fulfilment is at order grain.
- Payroll is at employee-pay-period grain.

Putting all processes in one flat table would repeat data and produce incorrect totals. I therefore used dimensional modelling with separate Facts and shared Dimensions.

## Step 1 — Business-process bus matrix

I first created a bus matrix. Rows represent business processes and columns represent Dimensions. An X shows that a Dimension is valid for a Fact.

This helped me decide relationships from business meaning instead of connecting every matching key.

Example:

```text
Sales uses Date, Customer, Product, Store, Employee,
Promotion, Payment, and Geography.

Inventory uses Date, Product, and Warehouse.

Payroll uses Date, Employee, Department, and Store.
```

## Step 2 — Declared Fact grains

Before creating each Fact, I wrote one sentence describing what one row means. This avoids mixing order-level and line-level values.

Examples:

```text
fact_sales: one row per order line
fact_returns: one row per return line
fact_inventory_snapshot: one row per date, product, and warehouse
fact_order_fulfillment: one row per order
```

## Step 3 — Created conformed Dimensions

The source exports contain repeated Customer, Product, Store, Employee, and other descriptive attributes. I created reusable Dimension tables so the same business meaning can filter multiple Facts.

Customer, Product, and Employee contain effective dates and current-row flags to support historical versions.

## Step 4 — Created Facts

Facts contain:

- Foreign keys to valid Dimensions
- Transaction or event identifiers
- Numeric measures at the declared grain

For example, `fact_sales` contains Order Number, Order Line Number, Date keys, business Dimension keys, Quantity, Revenue, Cost, Tax, and Margin.

## Step 5 — Added Date roles

A business process can have more than one Date.

Examples:

```text
Sales: Order Date and Ship Date
Purchase Orders: PO Date, Expected Date, Received Date
Shipment: Ship Date, Promised Date, Delivery Date
Fulfilment: Order, Payment, Packed, Shipped, Delivered, Cancelled
```

I kept one primary Date active per Fact. Secondary Date relationships are inactive and can be activated inside a measure with `USERELATIONSHIP`.

## Step 6 — Built the Retail semantic model

The Retail model combines seven related Facts with their conformed Dimensions. This is a galaxy or multi-Fact model.

A busy relationship diagram is expected because a shared Dimension can connect to several valid Facts. I validated the cardinality, direction, active status, and business purpose of every relationship instead of removing relationships only to make the diagram look smaller.

## Step 7 — Built the Workforce semantic model

Payroll and Attendance remain in the enterprise Warehouse but are exposed through a separate Workforce model.

This provides a clear HR audience boundary without duplicating the physical Warehouse data.

## Step 8 — Added focused measures

I added a compact KPI layer instead of creating dozens of repetitive measures.

Examples:

- Total Revenue
- Gross Margin %
- Period Return Unit Rate %
- Latest Inventory Value
- Supplier Fill Rate %
- On-Time Delivery %
- Cancellation Rate %
- Gross and Net Payroll
- Attendance Utilization %

## Step 9 — Added Git integration

The Fabric workspace is connected to GitHub. Warehouse definitions and semantic-model TMDL files are version controlled. This makes relationships, columns, and measures visible as code and creates an auditable history of changes.

## Important problems I solved

### Wrong Fulfilment Date relationship

The initial relationship used `order_key` against the Date Dimension. I corrected it to `order_date_key`.

### Missing Shipment relationships

The initial Git definition only contained Shipment Date relationships. I added Product, Supplier, Warehouse, Store, Carrier, and Geography relationships.

### Missing Sales Promotion key

The source contained promoted Sales, but `fact_sales` did not contain `promotion_key`. I added a nullable key, backfilled matching promotions, and related Sales to Promotion.

### Workforce ambiguous paths

The Payroll Date relationship initially had the wrong orientation, which created an indirect Payroll-Date-Attendance filter path. I recreated the relationship with Date on the one side and Payroll on the many side, kept single-direction filtering, and activated all eight Workforce relationships.

## What I would add in a production environment

- Automated orchestration and deployment pipelines
- Environment-specific configuration for Development, Test, and Production
- Monitoring and alerting
- Incremental loading for large Facts
- A user-to-store or user-to-department security table for dynamic RLS
- Certified semantic models and formal data-owner approval

These items are documented as future production enhancements and are not falsely claimed as completed in this development-scale project.
