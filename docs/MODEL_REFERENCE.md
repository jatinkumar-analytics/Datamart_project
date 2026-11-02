# Model Reference

## Enterprise Warehouse inventory

### Conformed Dimensions

| Dimension | Main purpose |
|---|---|
| `dim_date` | Shared calendar and Date filtering |
| `dim_customer` | Customer profile and segment |
| `dim_product` | Product hierarchy, brand, price, and cost |
| `dim_store` | Store and format |
| `dim_employee` | Employee, role, grade, and home store |
| `dim_department` | Workforce department and cost centre |
| `dim_geography` | City, state, region, and zone |
| `dim_supplier` | Supplier profile and terms |
| `dim_warehouse` | Warehouse and capacity |
| `dim_carrier` | Carrier, service level, and transport mode |
| `dim_promotion` | Campaign and discount definition |
| `dim_payment` | Payment method and sales channel |
| `dim_return_reason` | Return category and controllability |

### Facts and grains

| Fact | Grain | Main measures |
|---|---|---|
| `fact_sales` | Order line | Quantity, gross, discount, net, cost, tax, margin |
| `fact_returns` | Return line | Quantity, refund, restocking fee |
| `fact_promotion_coverage` | Date-promotion-product-store | Eligibility flag |
| `fact_purchase_orders` | Purchase-order line | Ordered/received quantity and amount |
| `fact_shipment` | Shipment line | Quantity, weight, shipping cost |
| `fact_inventory_snapshot` | Date-product-warehouse | Stock movement and inventory value |
| `fact_order_fulfillment` | Order | Milestone Dates, cancellation, cycle time, order value |
| `fact_payroll` | Employee-pay period | Pay components and net pay |
| `fact_attendance` | Employee-attendance date | Hours, lateness, and absence |

## Retail relationship matrix

| Fact | Dimensions |
|---|---|
| Sales | Date, Customer, Product, Store, Employee, Promotion, Payment, Geography |
| Returns | Date, Customer, Product, Store, Employee, Geography, Return Reason |
| Promotion Coverage | Date, Promotion, Product, Store |
| Purchase Orders | Date, Product, Supplier, Warehouse, Employee |
| Shipment | Date, Product, Supplier, Warehouse, Store, Carrier, Geography |
| Inventory Snapshot | Date, Product, Warehouse |
| Order Fulfilment | Date, Customer, Store, Warehouse, Carrier, Geography |

## Workforce relationship matrix

| Fact | Dimensions |
|---|---|
| Payroll | Date, Employee, Department, Store |
| Attendance | Date, Employee, Department, Store |

## Active primary Date roles

```text
Sales              → order_date_key
Returns            → return_date_key
Promotion Coverage → coverage_date_key
Purchase Orders    → po_date_key
Shipment           → ship_date_key
Inventory Snapshot → snapshot_date_key
Order Fulfilment   → order_date_key
Payroll            → pay_period_date_key
Attendance         → attendance_date_key
```

## Inactive secondary Date roles

```text
Sales              → ship_date_key
Purchase Orders    → expected_date_key, received_date_key
Shipment           → promised_date_key, delivery_date_key
Order Fulfilment   → payment_date_key, packed_date_key,
                      shipped_date_key, delivered_date_key,
                      cancelled_date_key
```

## Relationship contract

```text
Many side: Fact foreign key
One side: Dimension key
Cross-filter: Single
Fact-to-Fact: Not used
Primary Date: Active
Secondary Date: Inactive
```
