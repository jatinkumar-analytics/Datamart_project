# KPI Catalog

This catalog lists the exact 32 Retail and six Workforce measure names stored in the semantic-model TMDL files.

## Sales — 15 measures

| Measure | Business meaning |
|---|---|
| `Total revenue` | Net sales amount after transaction discounts |
| `Gross Sales` | Sales value before discounts |
| `Total Discount` | Total discount amount |
| `Total Cost` | Product cost attached to Sales |
| `Gross Margin` | Revenue less product cost |
| `Gross Margin %` | Gross Margin divided by Total revenue |
| `Units Sold` | Total quantity sold |
| `Order Count` | Distinct customer orders |
| `customer count` | Distinct customers in the current context |
| `AOV` | Total revenue divided by Order Count |
| `Avg selling price` | Total revenue divided by Units Sold |
| `Discount rate %` | Total Discount divided by Gross Sales |
| `Revenue YTD` | Year-to-date Total revenue using the active Order Date |
| `Promoted Revenue` | Revenue from rows that have a Promotion key |
| `Promoted Revenue %` | Promoted Revenue divided by Total revenue |

## Returns — 3 measures

| Measure | Business meaning |
|---|---|
| `Total Refund` | Amount refunded to customers |
| `Period Return Unit Rate %` | Returned units divided by sold units in the selected period |
| `Net Revenue After Returns` | Total revenue less Total Refund |

## Inventory — 3 measures

| Measure | Business meaning |
|---|---|
| `Closing Stock` | Closing quantity at the latest available snapshot |
| `Inventory Value` | Value at the latest available snapshot |
| `Stockout Rate %` | Stockout snapshot rows divided by snapshot rows |

## Purchase Orders — 3 measures

| Measure | Business meaning |
|---|---|
| `Purchase Order Value` | Total PO amount |
| `Outstanding Quantity` | Ordered quantity less received quantity |
| `Supplier Fill Rate %` | Received quantity divided by ordered quantity |

## Shipment — 3 measures

| Measure | Business meaning |
|---|---|
| `Shipment Count` | Distinct shipment numbers |
| `Shipping Cost` | Total shipment-line cost |
| `On-Time Delivery %` | Share of shipment lines delivered on or before Promised Date |

## Order Fulfilment — 3 measures

| Measure | Business meaning |
|---|---|
| `Fulfillment Order Count` | Distinct orders in the fulfilment process |
| `Cancellation Rate %` | Cancelled orders divided by fulfilment orders |
| `Average Days to Ship` | Average order-to-ship duration |

## Promotion Coverage — 2 measures

| Measure | Business meaning |
|---|---|
| `Promotion Eligibility Rate %` | Eligible coverage rows divided by all coverage rows |
| `Covered Products` | Distinct products in Promotion Coverage |

## Workforce — 6 measures

| Measure | Business meaning |
|---|---|
| `Gross Payroll` | Pay before deductions and tax |
| `Net Payroll` | Pay after deductions and tax |
| `Average Net Pay per Employee` | Net Payroll divided by paid employee count |
| `Worked Hours` | Total employee worked hours |
| `Attendance Utilization %` | Worked Hours divided by Scheduled Hours |
| `Overtime Rate %` | Overtime Hours divided by Worked Hours |

## Interpretation notes

- `Period Return Unit Rate %` compares Returns occurring in a selected period with Sales occurring in the same period. It is not a sale-cohort return rate.
- `Closing Stock` and `Inventory Value` use the latest available snapshot in the filter context. Snapshot balances should not be blindly added across Dates.
- Inactive Date-role measures use `USERELATIONSHIP` to change Date context only for that calculation.
